defmodule MySiteWeb.NavLive do
  use MySiteWeb, :live_view

  alias MySiteWeb.Components.Bulma.Menu

  def render(assigns) do
    ~H"""
    <Menu.root>
      <Menu.label text="Blogs" />
      <Menu.list>
        <Menu.item text="Tech">
          <Menu.item text="Programming" />
          <Menu.item text="Infrastructure" />
          <Menu.item text="Daily struggles" />
        </Menu.item>
        <Menu.item text="Projects" />
      </Menu.list>
    </Menu.root>
    """
  end

  def handle_params(_unsigned_params, uri, socket) do
    {:noreply, assign(socket, :current_url, uri)}
  end
end
