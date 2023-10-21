class UseCasesModel < Sitepress::Model
  collection glob: "**/use-cases/**/*.html*"
  data :title
end
