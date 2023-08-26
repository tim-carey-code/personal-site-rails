// Entry point for the build script in your package.json
import "@hotwired/turbo-rails";
import "./controllers";

import hljs from "highlight.js";
import "highlight.js/styles/github.css";
// Recently, I've found that this path is required import hljs from 'highlight.js/lib/core'

hljs.configure({ languages: ["ruby", "erb", "bash", "javascript"] });
document.addEventListener("turbo:load", (event) => {
  document.querySelectorAll("pre").forEach((block) => {
    hljs.highlightElement(block);
  });
});

import "trix";
import "@rails/actiontext";
