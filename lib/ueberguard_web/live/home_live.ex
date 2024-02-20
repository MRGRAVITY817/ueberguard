defmodule UeberguardWeb.HomeLive do
  use UeberguardWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok,
     socket
     |> assign(:trigger_action, false)
     |> assign(:form, to_form(%{email: "", password: ""}))}
  end

  def render(assigns) do
    ~H"""
    <!-- Email/Password Sign Up -->
    <.simple_form
      for={@form}
      id="registration_form"
      phx-change="validate"
      phx-submit="save_user"
      phx-trigger-action={@trigger_action}
    >
      <.input field={@form[:email]} type="email" label="Email" required />
      <.input field={@form[:password]} type="password" label="Password" required />
      <:actions>
        <button
          phx-disable-with="Creating Account..."
          class="bg-blue-500 text-white font-bold py-2 px-4 rounded hover:opacity-70 w-full"
        >
          Sign Up
        </button>
      </:actions>
    </.simple_form>
    <!-- Github Sign Up -->
    <p class="my-8 text-center">...or continue with</p>
    <a href="/auth/github">
      <button class="bg-black text-white font-bold py-2 px-4 rounded hover:opacity-70 w-full">
        Github
      </button>
    </a>
    """
  end
end
