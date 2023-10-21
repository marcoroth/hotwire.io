class ApplicationController < ActionController::Base
  before_action :set_default_meta_tags

  private

  def set_default_meta_tags
    title = "Hotwire.io"
    description = "Community-driven documentation and resource Hub for Hotwire."
    image = "#{root_url}og-image.png"

    tags = {
      site: title,
      reverse: true,
      separator: "·",
      description: description,
      canonical: request.original_url,
      noindex: Rails.env.local?,
      keywords: ["hotwire", "stimulus.js", "turbo drive", "turbo streams", "turbo frames", "documentation", "community"],
      twitter: {
        description: description,
        card: "summary_large_image",
        image: image
      },
      og: {
        description: description,
        type: "website",
        url: request.original_url,
        image: [
          {
            _: image,
            width: 1200,
            height: 630
          }
        ]
      }
    }

    set_meta_tags tags
  end
end
