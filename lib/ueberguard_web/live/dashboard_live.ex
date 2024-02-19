defmodule UeberguardWeb.DashboardLive do
  use UeberguardWeb, :live_view

  def render(assigns) do
    ~H"""
    <a href="/signout">
      <button class="bg-gray-500 text-white font-bold py-2 px-4 rounded hover:opacity-70 w-full">
        Sign Out
      </button>
    </a>
    """
  end
end
