# frozen_string_literal: true

class UI::CodeBlock < ViewComponent::Base
  def initialize(language: "ruby")
    @language = language
  end

  def formatter
    @formatter ||= Rouge::Formatters::HTML.new
  end

  def language
    case @language
    when "html"
      "HTML"
    when "js", "javascript"
      "Javascript"
    else
      @language.camelize
    end
  end

  def lexer
    "Rouge::Lexers::#{language}".constantize.new
  rescue
    Rouge::Lexers::PlainText.new
  end

  def id
    @id ||= "code-block-#{rand(10_000)}"
  end
end
