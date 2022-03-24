defmodule SundriesWeb.PageController do
  use SundriesWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
