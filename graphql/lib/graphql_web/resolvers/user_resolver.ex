defmodule GraphqlWeb.UserResolver do
  alias  Graphql.Accounts

  def all_users(_root, _args, _info) do
    users = Accounts.list_users()
    {:ok, links}
  end
end
