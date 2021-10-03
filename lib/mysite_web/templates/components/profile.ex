defmodule MySiteWeb.Components.Profile do
  use Phoenix.Component

  alias MySiteWeb.Components.Helpers
  alias MySiteWeb.Components.Bulma.FaIcon

  def shield_and_tag_all(assigns) do
    ~H"""

    <%= for profile <- @profiles do %>
      <Helpers.cond_with_link url={profile[:url]}>
        <FaIcon.fab icon={profile.icon} text={profile.text} />
      </Helpers.cond_with_link>
    <% end %>
    """
  end

  def shield_and_tag(assigns) do
    ~H"""
    <Helpers.cond_with_link url={@profile[:url]}>
      <FaIcon.fab icon={@profile.icon} text={@profile.text} />
    </Helpers.cond_with_link>
    """
  end
end
