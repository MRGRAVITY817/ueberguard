defmodule UeberguardWeb.HomeLive do
  use UeberguardWeb, :live_view

  def render(assigns) do
    ~H"""
    <a href="/auth/github">
      <button class="bg-black text-white font-bold py-2 px-4 rounded hover:opacity-70 w-full">
        Continue With Github
      </button>
    </a>
    """
  end
end
