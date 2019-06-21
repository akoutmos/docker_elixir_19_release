defmodule DockerElixir19ReleaseWeb.Router do
  use DockerElixir19ReleaseWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", DockerElixir19ReleaseWeb do
    pipe_through :browser

    get "/", PageController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", DockerElixir19ReleaseWeb do
  #   pipe_through :api
  # end
end
