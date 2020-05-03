defmodule MediumGraphqlWeb.Schema do
  use Absinthe.Schema

  object :link do
    field :id, non_null(:id)
    field :url, non_null(:string)
    field :description, non_null(:string)
  end
end
