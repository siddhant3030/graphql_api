defmodule Graphql.Accounts do
  alias Graphql.Repo
  alias Graphql.Accounts.User

  def list_users do
    Repo.all(User)
  end
end
