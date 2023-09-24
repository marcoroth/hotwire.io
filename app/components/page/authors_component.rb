# frozen_string_literal: true

class Page::AuthorsComponent < ViewComponent::Base
  def initialize(path:)
    @path = path
  end

  def git
    @git ||= Git.open(Rails.root)
  end

  def page_authors
    git.gblob(@path).log.map(&:author).map { |a| [a.name, a.email] }.tally.keys
  rescue => e
    puts e
    []
  end
end
