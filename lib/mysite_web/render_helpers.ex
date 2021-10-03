defmodule MySiteWeb.Helpers do
  def classes(list) when is_list(list) do
    Enum.join(list, " ")
  end

  def classes(base, list) when is_binary(base) and is_list(list) do
    base <> " " <> classes(list)
  end

  def classes(base, addition) when is_binary(base) and is_binary(addition) do
    base <> " " <> addition
  end
end
