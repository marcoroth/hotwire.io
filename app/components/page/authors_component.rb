# frozen_string_literal: true

class Page::AuthorsComponent < ViewComponent::Base
  def initialize(paths:)
    @paths = Array.wrap(paths).map { |path| path.gsub("#{Rails.root}/", "") }
  end

  def git
    @git ||= GitRepo.with_cloned_repo do
      Git.open(GitRepo.path)
    end
  end

  def commits
    @paths.flat_map { |path| git.gblob(path).log.to_a }.sort_by(&:author_date)
  end

  def page_authors
    commits.map(&:author).map { |a| [a.name, a.email] }.tally.keys
  rescue => e
    puts e
    []
  end

  def last_commit_date
    commits.last&.author_date
  end
end
