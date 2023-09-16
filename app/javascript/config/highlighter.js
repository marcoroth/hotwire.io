import { Highlighter } from "../src/highlighter"

document.querySelectorAll('[data-highlighter]').forEach((highlighter) => {
  new Highlighter(highlighter);
});
