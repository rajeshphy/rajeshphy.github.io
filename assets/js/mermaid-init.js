import mermaid from "https://cdn.jsdelivr.net/npm/mermaid@10/dist/mermaid.esm.min.mjs";

const blocks = document.querySelectorAll("pre > code.language-mermaid");

blocks.forEach((code) => {
  const wrapper = document.createElement("div");
  wrapper.className = "mermaid";
  wrapper.textContent = code.textContent;
  code.parentElement.replaceWith(wrapper);
});

mermaid.initialize({
  startOnLoad: false,
  securityLevel: "strict",
  theme: "base",
  themeVariables: {
    background: "transparent",
    primaryColor: "#edf5f1",
    primaryTextColor: "#1e1f22",
    primaryBorderColor: "#0b6764",
    lineColor: "#8a6a2a",
    secondaryColor: "#fff8e7",
    tertiaryColor: "#f9f5ed",
    fontFamily: "Georgia, Times New Roman, serif"
  }
});

if (blocks.length) {
  mermaid.run({ querySelector: ".mermaid" });
}
