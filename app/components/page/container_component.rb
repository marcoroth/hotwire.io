# frozen_string_literal: true

class Page::ContainerComponent < ViewComponent::Base
  renders_one :breadcrumbs, "UI::BreadcrumbsComponent"
  renders_one :title, "UI::TitleComponent"
  renders_one :authors, "Page::AuthorsComponent"

  def initialize(page:, options: {})
    @page = page
    @options = options
  end

  def render_breadcrumbs?
    @options.fetch(:render_breadcrumbs, true)
  end

  def credit_paths
    [
      @page.asset.path.path,
      *@page.data.dig("additional_credit_paths")
    ].compact.uniq
  end
end
