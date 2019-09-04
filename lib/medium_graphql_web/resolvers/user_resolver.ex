defmodule MediumGraphqlWeb.Resolvers.UserResolver do
  alias MediumGraphql.Accounts

  def users(_,_,_) do
    {:ok, Accounts.list_users}
  end
end
