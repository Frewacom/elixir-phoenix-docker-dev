defmodule DemoElixirWeb.PageController do
  use DemoElixirWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def test(conn, _params) do
    json(conn, %{ hello: "world" })
  end
end
