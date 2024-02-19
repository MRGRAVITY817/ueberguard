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
    conn
    |> put_flash(:info, "Successfully authenticated.")
    |> assign(:current_user, auth.info.email)
    |> redirect(to: "/dashboard")
  end

  def signout(conn, _params) do
    # delete oauth session
    conn
    |> configure_session(drop: true)
    |> put_flash(:info, "You have been logged out.")
    |> redirect(to: "/")
  end
end
