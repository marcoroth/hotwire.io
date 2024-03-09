# frozen_string_literal: true

module TurboDocumentationHelper
  def turbo_documentation_page(page)
    ref = "692c6ffe873d4671d6c749eb045c073bae0e032e"
    content = Net::HTTP.get(URI("https://raw.githubusercontent.com/hotwired/turbo-site/#{ref}/_source/#{page}"))
    content_without_frontmatter = content.split("---").from(2).join("---")

    render_markdown(content_without_frontmatter.force_encoding("utf-8"))
  end
end
