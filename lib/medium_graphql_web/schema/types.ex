defmodule MediumGraphqlWeb.Schema.Types do
  use Absinthe.Schema.Notation

  alias MediumGraphqlWeb.Schema.Types
  import_types(Types.Usertype)
end
