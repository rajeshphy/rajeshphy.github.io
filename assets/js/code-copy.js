(function () {
  if (window.__codeCopyInitialized) return;
  window.__codeCopyInitialized = true;

  const supportedLanguages = new Set([
    "text",
    "plaintext",
    "python",
    "latex",
    "tex",
    "maxima",
    "scss",
    "sass",
    "css",
    "html",
    "javascript",
    "js",
    "yaml",
    "yml",
    "bash",
    "shell",
    "sh",
    "markdown",
    "md",
    "jekyll",
    "liquid",
    "json",
    "terminal",
    "console"
  ]);

  function languageFromClass(element) {
    const classes = Array.from(element.classList || []);
    const languageClass = classes.find((name) => name.startsWith("language-"));
    if (!languageClass) return "";
    return languageClass.replace(/^language-/, "").toLowerCase();
  }

  function getBlockLanguage(pre) {
    const code = pre.querySelector("code");
    return languageFromClass(pre)
      || languageFromClass(code)
      || languageFromClass(pre.closest(".highlighter-rouge"))
      || languageFromClass(pre.closest(".highlight"));
  }

  function getCopyHost(pre, language) {
    const rouge = pre.closest(".highlighter-rouge");
    if (rouge && rouge.querySelector("pre") === pre) return rouge;

    const highlight = pre.closest(".highlight");
    if (highlight && highlight.querySelector("pre") === pre) return highlight;

    const wrapper = document.createElement("div");
    wrapper.className = `code-copy-shell language-${language}`;
    pre.parentNode.insertBefore(wrapper, pre);
    wrapper.appendChild(pre);
    return wrapper;
  }

  async function copyText(text) {
    if (navigator.clipboard?.writeText) {
      await navigator.clipboard.writeText(text);
      return;
    }

    const textarea = document.createElement("textarea");
    textarea.value = text;
    textarea.setAttribute("readonly", "");
    textarea.style.position = "fixed";
    textarea.style.top = "-1000px";
    document.body.appendChild(textarea);
    textarea.select();
    document.execCommand("copy");
    textarea.remove();
  }

  function attachButton(pre) {
    const language = getBlockLanguage(pre);
    if (!supportedLanguages.has(language) || pre.dataset.copyReady === "true") return;

    const host = getCopyHost(pre, language);
    if (host.querySelector(":scope > .code-copy-button")) return;

    pre.dataset.copyReady = "true";
    const button = document.createElement("button");
    button.className = "code-copy-button";
    button.type = "button";
    button.textContent = "Copy";
    button.setAttribute("aria-label", "Copy code block");

    button.addEventListener("click", async () => {
      const code = pre.querySelector("code") || pre;
      const originalText = button.textContent;

      try {
        await copyText(code.innerText.replace(/\n$/, ""));
        button.textContent = "Copied";
        button.classList.add("is-copied");
      } catch (_error) {
        button.textContent = "Failed";
      }

      window.setTimeout(() => {
        button.textContent = originalText;
        button.classList.remove("is-copied");
      }, 1400);
    });

    host.appendChild(button);
  }

  function init() {
    document.querySelectorAll("pre").forEach(attachButton);
  }

  if (document.readyState === "loading") {
    document.addEventListener("DOMContentLoaded", init);
  } else {
    init();
  }
})();
