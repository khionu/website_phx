defmodule MySiteWeb.Router do
  use MySiteWeb, :router

  import Phoenix.LiveView.Router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :put_root_layout, {MySiteWeb.LayoutView, :root}
    plug :protect_from_forgery
    plug :put_secure_browser_headers
    # List of atom keys or {:key, default}
    plug MySiteWeb.Plugs.StaticData, [{:profiles, []}]
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", MySiteWeb do
    pipe_through :browser

    # get "/", PageController, :index
    live "/nav", MySiteWeb.NavLive
  end

  # Other scopes may use custom stacks.
  # scope "/api", MySiteWeb do
  #   pipe_through :api
  # end
end
