defmodule MediumGraphqlWeb.Router do
  use MediumGraphqlWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", MediumGraphqlWeb do
    pipe_through :api

    forward("/graphql", Absinthe.Plug, schema: MediumGraphqlWeb.Schema)

    if Mix.env() == :dev do
      forward("/graphiql", Absinthe.Plug, schema: MediumGraphiqlWeb.Schema)
    end
  end
end
