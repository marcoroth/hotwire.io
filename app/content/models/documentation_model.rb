class DocumentationModel < Sitepress::Model
  collection glob: "**/documentation/*.html*"
  data :title

  def self.core_technologies
    all.filter { |page| page.data["core"] == true }.sort_by(&:title)
  end

  def self.third_party_technologies
    all.filter { |page| page.data["core"] != true }.sort_by(&:title)
  end
end
