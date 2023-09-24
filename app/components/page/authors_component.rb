# frozen_string_literal: true

class Page::AuthorsComponent < ViewComponent::Base
  def initialize(path:)
    @path = path
  end

  def git
    @git ||= Git.open(Rails.root)
  end

  def commits
    git.gblob(@path).log
  end

  def page_authors
    commits.map(&:author).map { |a| [a.name, a.email] }.tally.keys
  rescue => e
    puts e
    []
  end

  def last_commit_date
    commits.first.author_date
  end
end
