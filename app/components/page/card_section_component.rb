# frozen_string_literal: true

class Page::CardSectionComponent < ViewComponent::Base
  def initialize(resources:, title: nil, all_url: nil, count: nil)
    @title = title
    @count = count
    @all_url = all_url

    resources = Array.wrap(resources)

    @resources = @count ? resources.take(@count) : resources
    @total = resources.count
  end
end
