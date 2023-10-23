# frozen_string_literal: true

module TurboDocumentationHelper
  def turbo_documentation_page(page)
    render_markdown(Net::HTTP.get(URI("https://raw.githubusercontent.com/hotwired/turbo-site/main/_source/#{page}")).split("---").last.force_encoding("utf-8"))
  end
end
