# list.ex

defmodule ListBasics do
  def is_a_list(value) do
    IO.inspect(value, label: "*. is a list?")
  end

  def add(a_list, value) do
    IO.inspect([value | a_list], label: "*. [value | a_list]")
    IO.inspect(a_list ++ [value], label: "*. list ++ [value]")
    :ok
  end
end

# ----------------------------------------------
IO.puts("=============== script ===============\n")

list_a = [2, 20]
# _list_b = ["toad", 2, {:ok, "green"}]

ListBasics.is_a_list(list_a)
# -----------------------------------------------

IO.puts("=============== script ===============\n\n")

Code.compiler_options(ignore_module_conflict: true)
