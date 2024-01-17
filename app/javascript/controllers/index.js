import { application } from "../config/stimulus"
import { registerControllers } from "stimulus-vite-helpers"

const controllers = import.meta.glob("./**/*_controller.js", { eager: true })

registerControllers(application, controllers)
