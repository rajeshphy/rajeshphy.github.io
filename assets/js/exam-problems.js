(function () {
  if (window.__examProblemsInitialized) return;
  window.__examProblemsInitialized = true;

  const shells = document.querySelectorAll(".exam-problem-renderer");
  if (!shells.length) return;

  function decodeHtml(value) {
    const textarea = document.createElement("textarea");
    textarea.innerHTML = value;
    return textarea.value;
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

  function parseProblems(source) {
    return decodeHtml(source)
      .split(/\n---+\n/g)
      .map((block) => block.trim())
      .filter(Boolean)
      .map((block) => {
        const lines = block.split(/\n/);
        const item = { question: "", options: {}, answer: "", source: "" };

        lines.forEach((line) => {
          const match = line.match(/^([A-DQ]|ANSWER|SOURCE):\s*(.*)$/i);
          if (!match) return;

          const key = match[1].toUpperCase();
          const value = match[2].trim();

          if (key === "Q") item.question = value;
          else if (key === "ANSWER") item.answer = value.toLowerCase();
          else if (key === "SOURCE") item.source = value.replace(/^\[|\]$/g, "");
          else item.options[key.toLowerCase()] = value;
        });

        const leadingTag = item.question.match(/^\[([^\]]+)\]\s*(.+)$/);
        if (leadingTag) {
          item.source ||= leadingTag[1];
          item.question = leadingTag[2];
        }

        return item;
      })
      .filter((item) => item.question && Object.keys(item.options).length);
  }

  function renderMath(shell) {
    if (window.MathJax?.typesetPromise) MathJax.typesetPromise([shell]);
  }

  shells.forEach((shell) => {
    const source = shell.querySelector(".exam-problem-source-text")?.value || "";
    const problems = parseProblems(source);
    const set = shell.querySelector(".exam-problem-set");
    const answerKey = shell.querySelector(".exam-answer-key");

    set.innerHTML = problems.map((problem, index) => `
      <section class="exam-problem">
        <div class="exam-problem-head">
          <span class="exam-problem-number">${index + 1}.</span>
          <span class="exam-problem-text">${problem.question}</span>
          ${problem.source ? `<strong class="exam-problem-source">[${escapeHtml(problem.source)}]</strong>` : ""}
        </div>
        <div class="exam-problem-options">
          ${["a", "b", "c", "d"].map((letter) => `
            <div class="exam-problem-option">
              <span>${letter}.</span>
              <p>${problem.options[letter] || ""}</p>
            </div>
          `).join("")}
        </div>
      </section>
    `).join("");

    answerKey.textContent = `Answer: ${problems.map((problem, index) => `${index + 1}-${problem.answer}`).join(", ")}`;
    renderMath(shell);
  });
})();
