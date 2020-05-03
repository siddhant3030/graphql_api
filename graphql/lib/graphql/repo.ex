defmodule Graphql.Repo do
  use Ecto.Repo,
    otp_app: :graphql,
    adapter: Ecto.Adapters.Postgres
end
