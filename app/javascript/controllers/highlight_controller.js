import { Controller } from "@hotwired/stimulus";
import hljs from "highlight.js";
import "highlight.js/styles/github.css";

export default class extends Controller {
  connect() {
    hljs.configure({ languages: ["ruby", "erb", "bash", "javascript"] });
    document.addEventListener("turbo:load", (event) => {
      document.querySelectorAll("pre").forEach((block) => {
        hljs.highlightElement(block);
      });
    });
  }
}
