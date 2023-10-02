class EcosystemModel < Sitepress::Model
  collection glob: "**/ecosystem/*.html*"
  data :title, :subtitle, :order
end
