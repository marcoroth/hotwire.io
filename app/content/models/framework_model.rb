class FrameworkModel < Sitepress::Model
  collection glob: "**/frameworks/*.html*", sort: :language
  data :title, :framework, :language, :description, :icon_class, :image

  def self.grouped_by_language
    all.sort_by(&:title).group_by(&:language).sort_by { |language, _| (language == "Ruby") ? "" : language }
  end
end
