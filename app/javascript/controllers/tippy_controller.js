import { Controller } from "@hotwired/stimulus"
import tippy from "tippy.js"

export default class extends Controller {
  connect() {
    this.tippy = new tippy(this.element)
  }

  disconnect() {
    this.tippy.destroy()
  }
}
