import { Controller } from "@hotwired/stimulus";
import { Editor } from "@tiptap/core";
import StarterKit from "@tiptap/starter-kit";
import CodeBlockLowlight from "@tiptap/extension-code-block-lowlight";
import Document from "@tiptap/extension-document";
import Paragraph from "@tiptap/extension-paragraph";
import Text from "@tiptap/extension-text";
import Link from "@tiptap/extension-link";
import Heading from "@tiptap/extension-heading";
import debounce from "lodash.debounce";
import css from "highlight.js/lib/languages/css";
import js from "highlight.js/lib/languages/javascript";
import ts from "highlight.js/lib/languages/typescript";
import html from "highlight.js/lib/languages/xml";
import ruby from "highlight.js/lib/languages/ruby";
import { lowlight } from "lowlight/lib/core";

export default class extends Controller {
  static targets = ["content", "input"];
  connect() {
    console.log(this.inputTarget.value);
    lowlight.registerLanguage("html", html);
    lowlight.registerLanguage("css", css);
    lowlight.registerLanguage("js", js);
    lowlight.registerLanguage("ts", ts);
    lowlight.registerLanguage("ruby", ruby);
    this.editor = new Editor({
      element: this.contentTarget,
      extensions: [
        StarterKit,
        Document,
        Paragraph,
        Text,
        Heading.configure({
          levels: [1, 2, 3],
        }),
        CodeBlockLowlight.configure({
          lowlight,
        }),
        Link,
      ],
      onUpdate: this.onUpdate,
      content: this.inputTarget.value,
    });
  }

  onUpdate = () => {
    this.inputTarget.value = this.editor.getHTML();
  };
}
