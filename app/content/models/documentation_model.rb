class DocumentationModel < Sitepress::Model
  collection glob: "**/documentation/*.html*"
  data :title, :breadcrumb
end
