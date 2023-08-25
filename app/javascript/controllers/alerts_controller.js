import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  connect() {
    const alert = document.querySelector(".alert");
    const closeButton = document.getElementById("dismiss-notice");

    closeButton.addEventListener("click", () => {
      alert.remove();
    });
  }
}
