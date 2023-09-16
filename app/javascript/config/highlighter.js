import { Highlighter } from "../src/highlighter"

document.addEventListener("turbo:load", () => {
  document.querySelectorAll('[data-highlighter]').forEach((highlighter) => {
    new Highlighter(highlighter);
  });
});
