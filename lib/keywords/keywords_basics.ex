# keywords_basics.ex

defmodule KeywordsBasics do
  def check_keyword(value) do
    IO.puts("----------------------------------------------------")

    value
    |> Keyword.keyword?()
    |> IO.inspect(label: "*. is a keyword?")
  end

  def string_options() do
    IO.puts("----------------------------------------------------")
    IO.puts("*. splitting & triming a string:")
    IO.inspect(String.split("m-a-g-i-c", "-", [{:trim, true}]))
    IO.inspect(String.split("m-a-g-i-c", "-", trim: true))
    :ok
  end

  def get_demo do
    IO.puts("----------------------------------------------------")

    keyword_list = [a: "toad", a: "newt", b: "bat"]
    get_first_value_match = Keyword.get(keyword_list, :a)
    get_all_matching_values = Keyword.get_values(keyword_list, :a)

    IO.inspect(keyword_list, label: "*. keyword list")
    IO.inspect(get_first_value_match, label: "*. get first value only")
    IO.inspect(get_all_matching_values, label: "*. get all values that match")
  end
end

# ----------------------------------------------
IO.puts("=============== script ===============\n")
keyword_dummy_list = [{:a, true}, {:b, false}]
KeywordsBasics.check_keyword(keyword_dummy_list)
# -----------------------------------------------

KeywordsBasics.string_options()
# -----------------------------------------------

KeywordsBasics.get_demo()
# -----------------------------------------------

IO.puts("=============== script ===============\n\n")

Code.compiler_options(ignore_module_conflict: true)
