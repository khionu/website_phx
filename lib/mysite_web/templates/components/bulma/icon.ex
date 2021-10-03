defmodule MySiteWeb.Components.Bulma.FaIcon do
  use Phoenix.Component

  def fab(assigns) do
    ~H"""
    <%= if @text do %>
      <span class="icon-text">
        <span class="icon">
          <i class={"fab " <> @icon}></i>
        </span>
      </span>
      <span><%= @text %></span>
    <% else %>
      <span class="icon">
        <i class={"fab " <> @icon}></i>
      </span>
    <% end %>
    """
  end
end
