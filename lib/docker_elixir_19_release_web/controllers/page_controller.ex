defmodule DockerElixir19ReleaseWeb.PageController do
  use DockerElixir19ReleaseWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
