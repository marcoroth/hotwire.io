# frozen_string_literal: true

class Page::VideoResourceCardComponent < Page::ResourceCardComponent
  def thumbnail_url
    "https://img.youtube.com/vi/#{video_id}/maxresdefault.jpg"
  end

  private

  def video_id
    extract_video_id_from_url(@resource.url)
  end

  def extract_video_id_from_url(url)
    return nil unless url.present?

    uri = URI.parse(url)
    return nil unless uri.host == "www.youtube.com" && uri.path == "/watch"

    params = URI.decode_www_form(uri.query).to_h
    return nil unless params["v"].present?

    params["v"]
  end
end
