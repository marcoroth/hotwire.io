class TurboReferenceModel < Sitepress::Model
  collection glob: "**/documentation/turbo/reference/*.html*"
  data :title, :breadcrumb
end
