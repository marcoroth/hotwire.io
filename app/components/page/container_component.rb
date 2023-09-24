# frozen_string_literal: true

class Page::ContainerComponent < ViewComponent::Base
  renders_one :title, "UI::TitleComponent"

  def initialize(page:)
    @page = page
  end
end
