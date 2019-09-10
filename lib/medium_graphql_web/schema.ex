defmodule MediumGraphqlWeb.Schema do
  use Absinthe.Schema
  alias MediumGraphqlWeb.Resolvers

  import_types(MediumGraphqlWeb.Schema.Types)

  query do
    @desc "Get a list of all users"
    field :users, list_of(:user_type) do
      resolve(&Resolvers.UserResolver.users/3)
    end
  end

  mutation do

  end
end
