defmodule MySiteWeb.LayoutView do
  use MySiteWeb, :view

  # Phoenix LiveDashboard is available only in development by default,
  # so we instruct Elixir to not warn if the dashboard route is missing.
  @compile {:no_warn_undefined, {Routes, :live_dashboard_path, 2}}

  def page_title(%{title: title}), do: "#{title} · " <> Application.fetch_env!(:mysite, :base_title)
  def page_title(_), do: Application.fetch_env!(:mysite, :base_title)
end
