defmodule GraphqlWeb.Schema do
  use Absinthe.Schema
  import_types(GraphqlWeb.Schema.Types)

  query do
    field :blog_posts, list_of(:blog_post) do
      resolve(&Graphql.Blog.PostResolver.all/2)
    end

    field :blog_post, type: :blog_post do
      arg(:id, non_null(:id))
      resolve(&Graphql.Blog.PostResolver.find/2)
    end

    field :accounts_users, list_of(:accounts_user) do
      resolve(&Graphql.Accounts.UserResolver.all/2)
    end

    field :accounts_user, :accounts_user do
      arg(:email, non_null(:string))
      resolve(&Graphql.Accounts.UserResolver.find/2)
    end
  end
end
