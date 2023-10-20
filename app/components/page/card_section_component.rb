# frozen_string_literal: true

class Page::CardSectionComponent < ViewComponent::Base
  def initialize(resources:, title: nil, all_url: nil)
    @title = title
    @resources = resources
    @all_url = all_url
  end
end
