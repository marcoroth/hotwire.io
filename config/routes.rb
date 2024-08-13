Rails.application.routes.draw do
  scope "/documentation/turbo/reference" do
    get "/01_drive", to: redirect("/documentation/turbo/handbook/drive")
    get "/02_frames", to: redirect("/documentation/turbo/handbook/frames")
    get "/03_streams", to: redirect("/documentation/turbo/handbook/streams")
    get "/04_events", to: redirect("/documentation/turbo/handbook/events")
    get "/05_attributes", to: redirect("/documentation/turbo/handbook/attributes")
  end

  scope "/documentation/turbo/handbook" do
    get "/03_frames", to: redirect("/documentation/turbo/handbook/frames")
    get "/04_frames", to: redirect("/documentation/turbo/handbook/frames")

    get "/04_streams", to: redirect("/documentation/turbo/handbook/streams")
    get "/05_streams", to: redirect("/documentation/turbo/handbook/streams")

    get "/05_native", to: redirect("/documentation/turbo/handbook/native")
    get "/06_native", to: redirect("/documentation/turbo/handbook/native")

    get "/06_building", to: redirect("/documentation/turbo/handbook/building")
    get "/07_building", to: redirect("/documentation/turbo/handbook/building")

    get "/07_installing", to: redirect("/documentation/turbo/handbook/installing")
    get "/08_installing", to: redirect("/documentation/turbo/handbook/installing")
  end

  sitepress_pages
  sitepress_root

  get "up" => "rails/health#show", :as => :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", :as => :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", :as => :pwa_manifest
end
