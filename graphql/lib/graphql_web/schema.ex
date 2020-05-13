defmodule GraphqlWeb.Schema do
     use Absinthe.Schema
     alias GraphqlWeb.UserResolver


     object :user do
      field :id, non_null(:id)
      field :name, non_null(:string)
      field :email, non_null(:string)
      field :password, non_null(:string)
     end


     query do
        field :all_users, non_null(list_of(non_null(:user))) do
          resolve &UserResolver.all_users/3
        end
     end
end
