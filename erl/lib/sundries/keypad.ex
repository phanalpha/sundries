defmodule Sundries.Keypad do
  def dial(wording) do
    wording
    |> String.upcase()
    |> String.replace(["A", "B", "C"], "2")
    |> String.replace(["D", "E", "F"], "3")
    |> String.replace(["G", "H", "I"], "4")
    |> String.replace(["J", "K", "L"], "5")
    |> String.replace(["M", "N", "O"], "6")
    |> String.replace(["P", "Q", "R", "S"], "7")
    |> String.replace(["T", "U", "V"], "8")
    |> String.replace(["W", "X", "Y", "Z"], "9")
    |> String.replace(" ", "0")
    |> String.replace(~r/[^0-9]/, "1")
  end
end
