# frozen_string_literal: true

module MarkdownHelper
  def render_markdown(content)
    MarkdownRenderer.new(content).render
  end
end
