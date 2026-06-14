(function () {
  if (window.__articleBlocksInitialized) return;
  window.__articleBlocksInitialized = true;

  let mathJaxLoading = null;

  function ensureMathJax() {
    if (window.MathJax?.typesetPromise) return Promise.resolve();
    if (mathJaxLoading) return mathJaxLoading;

    window.MathJax = window.MathJax || {
      tex: { inlineMath: [["$", "$"], ["\\(", "\\)"]], displayMath: [["$$", "$$"], ["\\[", "\\]"]] },
      svg: { fontCache: "global" }
    };

    mathJaxLoading = new Promise((resolve) => {
      const existing = document.querySelector('script[src*="mathjax"]');
      if (existing) {
        existing.addEventListener("load", resolve, { once: true });
        window.setTimeout(resolve, 5000);
        return;
      }

      const script = document.createElement("script");
      script.src = "https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-svg.js";
      script.defer = true;
      script.onload = resolve;
      script.onerror = resolve;
      document.head.appendChild(script);
    });

    return mathJaxLoading;
  }

  function escapeHtml(value) {
    return String(value).replace(/[&<>"']/g, (char) => ({
      "&": "&amp;",
      "<": "&lt;",
      ">": "&gt;",
      '"': "&quot;",
      "'": "&#39;"
    }[char]));
  }

  function encodeAttribute(value) {
    return escapeHtml(value).replace(/\n/g, "&#10;");
  }

  function languageFromClass(element) {
    const classes = Array.from(element?.classList || []);
    const languageClass = classes.find((name) => name === "language-article");
    return Boolean(languageClass);
  }

  function isArticlePre(pre) {
    return languageFromClass(pre)
      || languageFromClass(pre.querySelector("code"))
      || languageFromClass(pre.closest(".highlighter-rouge"))
      || languageFromClass(pre.closest(".highlight"));
  }

  function renderInlineMarkdown(value) {
    return escapeHtml(value)
      .replace(/`([^`]+)`/g, "<code>$1</code>")
      .replace(/\*\*([^*]+)\*\*/g, "<strong>$1</strong>")
      .replace(/\*([^*]+)\*/g, "<em>$1</em>");
  }

  function protectInlineMath(value) {
    const math = [];
    const text = value.replace(/(^|[^\\])\$([^$\n]+?)\$/g, (match, prefix, tex) => {
      const token = `@@ARTICLE_INLINE_MATH_${math.length}@@`;
      math.push(`${prefix}$${tex}$`);
      return token;
    });

    return { text, math };
  }

  function restoreInlineMath(value, math) {
    return math.reduce((html, tex, index) => {
      return html.replace(`@@ARTICLE_INLINE_MATH_${index}@@`, tex);
    }, value);
  }

  function flushParagraph(lines, output) {
    if (!lines.length) return;
    const text = lines.join(" ").replace(/\s{2,}/g, " ").trim();
    if (text) {
      const protectedText = protectInlineMath(text);
      const html = renderInlineMarkdown(protectedText.text);
      output.push(`<p>${restoreInlineMath(html, protectedText.math)}</p>`);
    }
    lines.length = 0;
  }

  function renderMarkdownChunk(chunk) {
    const output = [];
    const paragraph = [];

    chunk.split(/\n/).forEach((line) => {
      const trimmed = line.trim();
      if (!trimmed) {
        flushParagraph(paragraph, output);
        return;
      }

      const heading = trimmed.match(/^(#{1,4})\s+(.+)$/);
      if (heading) {
        flushParagraph(paragraph, output);
        const level = Math.min(heading[1].length + 1, 4);
        const protectedHeading = protectInlineMath(heading[2]);
        const html = renderInlineMarkdown(protectedHeading.text);
        output.push(`<h${level}>${restoreInlineMath(html, protectedHeading.math)}</h${level}>`);
        return;
      }

      paragraph.push(trimmed);
    });

    flushParagraph(paragraph, output);
    return output.join("");
  }

  function renderArticle(source) {
    const parts = source.replace(/\r\n?/g, "\n").trim().split(/(\$\$[\s\S]*?\$\$)/g);

    return parts.map((part) => {
      if (!part) return "";
      if (part.startsWith("$$") && part.endsWith("$$")) {
        const tex = part.replace(/^\$\$\s*/, "").replace(/\s*\$\$$/, "").trim();
        return `<div class="article-display-math" data-tex="${encodeAttribute(tex)}"></div>`;
      }
      return renderMarkdownChunk(part);
    }).join("");
  }

  function replacementTarget(pre) {
    return pre.closest(".highlighter-rouge") || pre.closest(".highlight") || pre;
  }

  function transform(pre) {
    if (!isArticlePre(pre)) return null;

    const code = pre.querySelector("code") || pre;
    const article = document.createElement("article");
    article.className = "article-rendered-block";
    article.innerHTML = renderArticle(code.textContent);
    replacementTarget(pre).replaceWith(article);
    return article;
  }

  function init() {
    const articles = Array.from(document.querySelectorAll("pre"))
      .map(transform)
      .filter(Boolean);

    if (!articles.length) return;

    ensureMathJax().then(() => {
      const displayJobs = articles.flatMap((article) => {
        return Array.from(article.querySelectorAll(".article-display-math[data-tex]")).map((math) => {
          const tex = math.getAttribute("data-tex") || "";
          if (!window.MathJax?.tex2svgPromise) {
            math.textContent = `$$\n${tex}\n$$`;
            return Promise.resolve();
          }

          return MathJax.tex2svgPromise(tex, { display: true })
            .then((node) => {
              math.replaceChildren(node);
              math.removeAttribute("data-tex");
            })
            .catch(() => {
              math.textContent = `$$\n${tex}\n$$`;
            });
        });
      });

      Promise.all(displayJobs).then(() => {
        if (window.MathJax?.typesetPromise) MathJax.typesetPromise(articles);
      });
    });
  }

  if (document.readyState === "loading") {
    document.addEventListener("DOMContentLoaded", init);
  } else {
    init();
  }
})();
