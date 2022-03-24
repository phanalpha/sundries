defmodule SundriesWeb.KeypadController do
  use SundriesWeb, :controller

  def index(conn, %{"wording" => wording}) do
    render(conn, "index.html", wording: wording, number: Sundries.Keypad.dial(wording))
  end

  def index(conn, _params) do
    render(conn, "index.html", wording: "", number: "")
  end
end
