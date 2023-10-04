# frozen_string_literal: true

class Page::ContributeComponent < ViewComponent::Base
  def initialize(file:)
    @file = file.gsub("#{Rails.root.to_s}/", "")
  end

  def github_edit_file_url
    helpers.github_edit_file_url(@file)
  end
end
