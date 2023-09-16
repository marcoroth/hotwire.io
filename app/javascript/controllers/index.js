import { application } from "../config/stimulus"
import { registerControllers } from "stimulus-vite-helpers"

const controllers = import.meta.globEager("./**/*_controller.js")

registerControllers(application, controllers)
