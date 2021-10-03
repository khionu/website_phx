defmodule MySiteWeb.Components.Helpers do
  use Phoenix.Component

  def cond_with_link(assigns) do
    ~H"""
    <%= if @url do %>
      <a href="#{@url}">
        <%= render_block(@inner_block) %>
      </a>
    <% else %>
      <%= render_block(@inner_block) %>
    <% end %>
    """
  end

  def cond_with_class(assigns) do
    ~H"""
    <%= if @class do %>
      <span class={@class}>
        <%= render_block(@inner_block) %>
      </span>
    <% else %>
      <%= render_block(@inner_block) %>
    <% end %>
    """
  end
end
