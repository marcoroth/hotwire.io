# frozen_string_literal: true

module GitHubHelper
  def github_repo_url
    "https://github.com/marcoroth/hotwire.io"
  end

  def github_default_branch
    "main"
  end

  def github_edit_file_url(path)
    "#{github_repo_url}/edit/#{github_default_branch}/#{path}"
  end

  def github_commit_url(commit)
    "#{github_repo_url}/commit/#{commit.sha}"
  end

  def github_author_image_url(email)
    "https://avatars.githubusercontent.com/u/e?email=#{email}&s=128"
  end
end
