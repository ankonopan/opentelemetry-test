defmodule WebApi.Orders do
  use Plug.Router
  use Plug.ErrorHandler

  plug(:match)
  plug(:dispatch)

  get "/" do
    message = %{data: %{test: 123}} |> Poison.encode!()

    conn
    |> put_resp_content_type("application/json")
    |> send_resp(200, message)
  end
end
