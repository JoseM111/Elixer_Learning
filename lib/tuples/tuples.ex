# tuples.ex

defmodule Tuples do
  def is_tuple_check(value) do
    IO.inspect(is_tuple(value), label: "*. checking if value is a tuple:")
  end

  def charm do
    IO.inspect({:ok, "Charmed"}, label: "*. returning a tuple :ok->tuple:")
  end

  def is_error do
    IO.inspect({:error, "Is an error"}, label: "*. returning a tuple :error->tuple:")
  end

  def get_demo do
    a_tuple = {:hex, 6, "six"}
    IO.inspect(a_tuple, label: "*. :hex->tuple:")
    IO.puts("*. Size of `is_tuple`: #{tuple_size(a_tuple)}")

    # appending to a tuple
    # appended :spell
    appended_tuple = Tuple.append(a_tuple, :spell)
    # tuple that was appended the data
    IO.inspect(appended_tuple, label: "*. Appending `appended_tuple`:")
    # showing the tuple size
    IO.inspect(tuple_size(appended_tuple), label: "*. New tuple size")
  end
end

# ----------------------------------------------
IO.puts("=============== script ===============\n")

Tuples.is_tuple_check({17, :wizard})
# -----------------------------------------------

Tuples.charm()
Tuples.is_error()
# -----------------------------------------------

Tuples.get_demo()
# -----------------------------------------------

IO.puts("=============== script ===============\n\n")

Code.compiler_options(ignore_module_conflict: true)
