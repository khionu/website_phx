defmodule MySiteWeb.Components.Bulma.Menu do
  use Phoenix.Component

  def root(assigns) do
    ~H"""
    <aside class="menu pt-4 ml-6 mb-auto">
    <%= render_block(@inner_block) %>
    </aside>
    """
  end

  def label(assigns) do
    ~H"""
    <p class="menu-label"><%= @text %></p>
    """
  end

  def item(assigns) do
    ~H"""
    <li><a><%= @text %></a>
    <%= if assigns[:inner_block] do %>
      <.list>
        <%= render_block(assigns[:inner_block]) %>
      </.list>
    <% end %>
    </li>
    """
  end

  def list(assigns) do
    ~H"""
    <ul class="menu-list">
    <%= render_block(@inner_block) %>
    </ul>
    """
  end
end
