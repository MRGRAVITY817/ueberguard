defmodule UeberguardWeb.AuthController do
  use UeberguardWeb, :controller
  plug Ueberauth

  def callback(%{assigns: %{ueberauth_failure: _failure}} = conn, _params) do
    # do something with the failure
    conn
    |> put_flash(:error, "Failed to authenticate.")
    |> redirect(to: "/")
  end

  def callback(%{assigns: %{ueberauth_auth: auth}} = conn, _params) do
    # do something with the auth
    # ...
    # then redirect
    redirect(conn, to: "/")
  end
end
