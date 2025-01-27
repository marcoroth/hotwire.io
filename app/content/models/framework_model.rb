class FrameworkModel < Sitepress::Model
  collection glob: "**/frameworks/*.html*"
  data :title, :framework, :language, :description, :icon_class, :image, :status

  def self.grouped_by_language
    all.sort_by(&:title).group_by(&:language).sort_by { |language, _| (language == "Ruby") ? "" : language }
  end
end
