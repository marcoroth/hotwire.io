import { defineConfig } from 'vite'
// import Ruby from 'vite-plugin-ruby'
import Rails from 'vite-plugin-rails'
// import FullReload from 'vite-plugin-full-reload'
// import StimulusHMR from 'vite-plugin-stimulus-hmr'

export default defineConfig({
  plugins: [
    Rails()
  ],
  server: {
    fs: {
      // Allow serving files from three levels up to the project root
      allow: ['../../..'],
    },
  },
})
