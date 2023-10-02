# frozen_string_literal: true

class Page::CardSectionComponent < ViewComponent::Base
  def initialize(title:, resources:, limit: 3, all_url: nil)
    @title = title
    @resources = resources
    @limit = limit
    @all_url = all_url
  end
end
