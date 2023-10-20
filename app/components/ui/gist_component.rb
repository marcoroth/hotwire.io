# frozen_string_literal: true

class UI::GistComponent < ViewComponent::Base
  def initialize(author:, id:)
    @author = author
    @id = id
  end
end
