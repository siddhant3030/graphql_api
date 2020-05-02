defmodule MediumGraphqlWeb.Router do
  use MediumGraphqlWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", MediumGraphqlWeb do
    pipe_through :api
  end
end
