# integers_floats.ex

defmodule IntegersFloats.IntegersFloats do
  def is_integer_or_float(value) do
    IO.puts("*. Is Integer->#{value}?: #{is_integer(value)}")
    IO.puts("*. Is Float->#{value}?: #{is_float(value)}")
  end

  def get_demo do
    int = 245
    decimal = 3.14159
    str = to_string(int)

    IO.puts("*. Integer: #{int}")
    IO.inspect(Integer.parse(str), label: "*. Integer parsing: ")
    IO.inspect(Integer.digits(int), label: "*. Digits: ")
    IO.puts("*. Float: #{decimal}")
    IO.puts("*. Round float to the nearest whole decimal: #{Float.round(decimal)}")
    IO.puts("*. Round float to nearest 1 place: #{Float.round(decimal, 1)}")
    IO.inspect(Float.parse(str), label: "*. Parsing numbers from a str:")
  end
end

# ----------------------------------------------
IO.puts("=============== script ===============\n")

IntegersFloats.IntegersFloats.is_integer_or_float(17.0)
# -----------------------------------------------

IntegersFloats.IntegersFloats.get_demo()
# -----------------------------------------------

IO.puts("=============== script ===============\n\n")

Code.compiler_options(ignore_module_conflict: true)
