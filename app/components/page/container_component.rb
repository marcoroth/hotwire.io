# frozen_string_literal: true

class Page::ContainerComponent < ViewComponent::Base
  renders_one :title, "UI::TitleComponent"
  renders_one :authors, "Page::AuthorsComponent"

  def initialize(page:)
    @page = page
  end

  def credit_paths
    [
      @page.asset.path.path,
      *@page.data.dig("additional_credit_paths")
    ].compact.uniq
  end
end
