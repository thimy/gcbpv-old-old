import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="menu-button"
export default class extends Controller {
  static targets = ["icon"]

  toggle() {
    this.element.getAttribute("data-menu-active") == "true" ? this.element.setAttribute("data-menu-active", "false") : this.element.setAttribute("data-menu-active", "true")
  }
}
