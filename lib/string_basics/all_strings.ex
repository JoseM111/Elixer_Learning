# all_strings.ex

defmodule StringBasics.AllStrings do
  def trim_string(value) do
    String.trim(value)
  end

  def check_is_binary(value) do
    is_binary(value)
  end

  def concatenate_strings(str_a, str_b) do
    result1 = str_a <> str_b
    IO.puts("*. Concatenate no space: #{result1}")

    result2 = str_a <> " " <> str_b
    IO.puts("*. Concatenate again with space: #{result2}")
  end

  def get_demo do
    wizard = "wizard"
    alchemy = "alchemy"
    caster_oil = "caster oil"

    IO.puts("*. Length of #{wizard}: #{String.length(wizard)}")
    IO.puts("*. Capitalize #{wizard}: #{String.capitalize(wizard)}")
    IO.puts("*. Downcase #{alchemy}: #{String.downcase(alchemy)}")
    IO.puts("*. Upcase #{alchemy}: #{String.upcase(alchemy)}")
    IO.puts("*. Contains the word oil?: #{String.contains?(caster_oil, "oil")}")
    IO.puts("*. First letter of #{wizard}: #{String.first(wizard)}")
    IO.puts("*. Last letter of #{wizard}: #{String.last(wizard)}")

    IO.inspect(
      String.split(caster_oil),
      label: "*. Spliting words in an array[]"
    )
  end
end

# ----------------------------------------------
IO.puts("=============== script ===============\n")

trim_result = StringBasics.AllStrings.trim_string("*. Trimming whitespace     ")
IO.puts(trim_result)
# -----------------------------------------------

is_binary = "binary"
binary_result = StringBasics.AllStrings.check_is_binary(is_binary)
IO.puts("*. Is binary: #{binary_result}")
# -----------------------------------------------

StringBasics.AllStrings.concatenate_strings("Wise", "Wizard")
# -----------------------------------------------

StringBasics.AllStrings.get_demo()
# -----------------------------------------------

IO.puts("=============== script ===============\n\n")

Code.compiler_options(ignore_module_conflict: true)
