class TurboHandbookModel < Sitepress::Model
  collection glob: "**/documentation/turbo/handbook/*.html*"
  data :title, :order
end
