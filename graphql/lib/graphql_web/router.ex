defmodule GraphqlWeb.Router do
  use GraphqlWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", GraphqlWeb do
    pipe_through :api
  end
end
