class CommunityModel < Sitepress::Model
  collection glob: "**/community/*.html*"
  data :title
end
