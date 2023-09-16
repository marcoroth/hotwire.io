# frozen_string_literal: true

class UI::TitleComponent < ViewComponent::Base
  def initialize(title:)
    @title = title
  end
end
