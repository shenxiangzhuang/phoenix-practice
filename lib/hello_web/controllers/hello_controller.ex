defmodule HelloWeb.HelloController do
  use HelloWeb, :controller

  def index(conn, _params) do
    # conn
    # |> put_root_layout(html: :app)
    # |> render(:index)

    render(conn, :index)

  end

  def show(conn, %{"messenger" => messenger}) do
    render(conn, :show, messenger: messenger)
  end

end
