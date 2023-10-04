# frozen_string_literal: true

module GitHubHelper
  def github_edit_file_url(path)
    github_repo_url = "https://github.com/marcoroth/hotwire.io"
    github_default_branch = "main"

    "#{github_repo_url}/edit/#{github_default_branch}/#{path}"
  end
end
