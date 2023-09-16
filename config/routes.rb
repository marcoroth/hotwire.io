Rails.application.routes.draw do
  sitepress_pages
  sitepress_root

  get "up" => "rails/health#show", as: :rails_health_check
end
