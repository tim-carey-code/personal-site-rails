import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["source"]

  url() {
    const copyBtn = document.getElementById("copyBtn")

    navigator.clipboard.writeText(this.sourceTarget.value)

    copyBtn.innerHTML = `
    <svg
        xmlns="http://www.w3.org/2000/svg"
        width="16"
        height="16"
        viewBox="0 0 16 16"
        class="h-3.5 w-3.5 text-slate-500 transition duration-200 ease-in-out group-hover:text-slate-600"
    >
    <g
            stroke-width="1.25"
            fill="none"
            stroke="currentCOlor"
            stroke-linecap="round"
            stroke-linejoin="round"
    >
        <rect x="2.5" y="3.5" width="10" height="12"></rect>

        <polyline
                points="4.5,0.5 15.5,0.5 15.5,13.5 "
                stroke="currentCOlor"
        ></polyline>

        <line x1="5.5" y1="6.5" x2="9.5" y2="6.5"></line>

        <line x1="5.5" y1="9.5" x2="9.5" y2="9.5"></line>

        <line x1="5.5" y1="12.5" x2="9.5" y2="12.5"></line>
    </g>
  </svg>
  Copied!     
    `

    setTimeout(() => {
      copyBtn.innerHTML = `
      <svg
          xmlns="http://www.w3.org/2000/svg"
          width="16"
          height="16"
          viewBox="0 0 16 16"
          class="h-3.5 w-3.5 text-slate-500 transition duration-200 ease-in-out group-hover:text-slate-600"
      >
      <g
              stroke-width="1.25"
              fill="none"
              stroke="currentCOlor"
              stroke-linecap="round"
              stroke-linejoin="round"
      >
          <rect x="2.5" y="3.5" width="10" height="12"></rect>

          <polyline
                  points="4.5,0.5 15.5,0.5 15.5,13.5 "
                  stroke="currentCOlor"
          ></polyline>

          <line x1="5.5" y1="6.5" x2="9.5" y2="6.5"></line>

          <line x1="5.5" y1="9.5" x2="9.5" y2="9.5"></line>

          <line x1="5.5" y1="12.5" x2="9.5" y2="12.5"></line>
      </g>
  </svg>
  Copy link     
      `
    }, 2000)
  }

  connect() {
    console.log("Hello from copy controller");
  }
}