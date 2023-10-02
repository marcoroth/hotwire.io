# frozen_string_literal: true

class Page::ResourceCardComponent < ViewComponent::Base
  def initialize(resource:)
    @resource = resource
  end
end
