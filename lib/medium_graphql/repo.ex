defmodule MediumGraphql.Repo do
  use Ecto.Repo,
    otp_app: :medium_graphql,
    adapter: Ecto.Adapters.Postgres
end
