# frozen_string_literal: true

class MarkdownRenderer
  class DefaultRenderer < Redcarpet::Render::HTML
    include Redcarpet::Render::SmartyPants

    def block_code(code, language)
      ApplicationController.render(UI::CodeBlock.new(language:).with_content(code), layout: false)
    end
  end

  def initialize(content)
    @content = content
  end

  def render
    return "" if content.blank?

    renderer.render(content)
  end

  private

  attr_reader :content

  def renderer
    Redcarpet::Markdown.new(
      DefaultRenderer.new(**markdown_settings),
      renderer_settings
    )
  end

  def markdown_settings
    {
      hard_wrap: true,
      no_images: false,
      no_links: false,
      with_toc_data: false
    }
  end

  def renderer_settings
    {
      autolink: true,
      disable_indented_code_blocks: true,
      fenced_code_blocks: true,
      footnotes: true,
      gh_blockcode: true,
      highlight: true,
      lax_spacing: true,
      no_intra_emphasis: true,
      strikethrough: true,
      superscript: true,
      tables: true,
      underline: true
    }
  end
end
