defmodule MySiteWeb.Plugs.StaticData do
  import Plug.Conn

  def init(opts), do: opts
  def call(conn, data) do
    Enum.reduce(data, conn,
    fn
      {key, default}, conn ->
        assign(conn, key,  Application.get_env(:mysite, key, default))
      key, conn ->
        assign(conn, key,  Application.get_env(:mysite, key))
    end)
  end
end
