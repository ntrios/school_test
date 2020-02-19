defmodule SchoolTestWeb.Router do
  use SchoolTestWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/" do
    pipe_through :api

    forward "/api", Absinthe.Plug, schema: SchoolTestWeb.GraphQL.Schema

    forward "/graphiql", Absinthe.Plug.GraphiQL,
      schema: SchoolTestWeb.GraphQL.Schema, 
      interface: :simple
  end
end
