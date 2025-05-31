# frozen_string_literal: true

module TurboDocumentationHelper
  def turbo_documentation_page(page)
    ref = "aa10dcf1c6b99eaf69c057ddf0ab6766f7e41124"
    content = Net::HTTP.get(URI("https://raw.githubusercontent.com/hotwired/turbo-site/#{ref}/_source/#{page}"))
    content_without_frontmatter = content.split("---").from(2).join("---")

    render_markdown(content_without_frontmatter.force_encoding("utf-8"))
  end
end
