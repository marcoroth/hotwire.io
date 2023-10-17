class FrameworkModel < Sitepress::Model
  collection glob: "**/frameworks/*.html*"
  data :title, :framework, :language, :description, :icon_class
end
