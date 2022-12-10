# linked_list.ex

defmodule LinkedList do
  def get_equipment_list(),
    do: [
      "Space Helmet",
      "Space Suit",
      "Snacks",
      "Grappling Hook",
      "Probe"
    ]

  def get_first_item_head(list) do
    IO.puts("----------------------------------------------------")
    # `hd`: returns the head of a list [ head | tails ]
    list
    |> hd()
    |> IO.inspect(label: "*. head of the list")
  end

  def remove_first_item_tail(list) do
    IO.puts("----------------------------------------------------")

    list
    |> tl()
    |> IO.inspect(label: "*. tail of the list")
  end

  def append_to_list_slow(list, new_value) do
    IO.puts("----------------------------------------------------")
    # appending to the list. must wrap the new_value with []
    # very slow since it adds the item to the end of the linked
    # list. so as you iterate through the list your hitting every
    # single node in the list which is very slow
    (list ++ [new_value])
    |> IO.inspect(label: "*. appending to a list\n   ")
  end

  def prepend_to_list_fast(list, new_value) do
    IO.puts("----------------------------------------------------")
    # # reverse the orginal list
    # list_reversed = Enum.reverse(list)
    # # add the new valueto the beginning of the reversed list
    # new_list = [new_value | list_reversed]
    # # reverse the list again
    # result = Enum.reverse(new_list)

    # now when you print it out the added value
    # should be at the end of the list and added
    # result = prepend(list, new_value)
    # IO.inspect(result, label: "*. prepending to the list")

    new_value
    |> prepend(list)
    |> IO.inspect(label: "*. prepending to the list\n   ")
  end

  def remove_item(list, index) do
    IO.puts("----------------------------------------------------")

    list
    |> List.delete_at(index)
    |> IO.inspect(label: "*. deleted value from list\n   ")

    IO.puts("     (value deleted: #{Enum.at(list, index)} | at index: #{index})")
  end

  def check_list_length(list) do
    IO.puts("----------------------------------------------------")
    IO.inspect(list, label: "*. the list\n   ")

    list
    |> length()
    |> IO.inspect(label: "*. length of the list")
  end

  def check_for_item(list, item) do
    IO.puts("----------------------------------------------------")

    # returns a boolean if true
    (item in list)
    |> IO.inspect(label: "*. is (#{item}) in the list?")
  end

  # =============== utility-functions ===============
  defp prepend(new_value, list) do
    # reverse the orginal list
    list_reversed = Enum.reverse(list)
    # add the new value to the beginning of the
    # reversed list with `con-cell operator [[HEAD | TAIL], []]`
    new_list = [new_value | list_reversed]
    # reverse the list one last time
    Enum.reverse(new_list)
  end
end

# ----------------------------------------------
IO.puts("=============== script ===============\n")
# [ HEAD | of the list ]
linked_list = LinkedList.get_equipment_list()
LinkedList.get_first_item_head(linked_list)
# -----------------------------------------------
# [ TAIL | of the list ]
LinkedList.remove_first_item_tail(linked_list)
# -----------------------------------------------
# appending to a list (slow)
appended_to_list = LinkedList.append_to_list_slow(linked_list, "Boots")
# -----------------------------------------------
# prepending to a list (fast)
prepended_to_list = LinkedList.prepend_to_list_fast(appended_to_list, "Jet Pack")
# -----------------------------------------------
# delete at index
LinkedList.remove_item(prepended_to_list, 4)
# -----------------------------------------------
# checking the length of the list
LinkedList.check_list_length(prepended_to_list)
# -----------------------------------------------
# check if an item is in the list
LinkedList.check_for_item(prepended_to_list, "Space Suit")
# -----------------------------------------------

IO.puts("=============== script ===============\n\n")

Code.compiler_options(ignore_module_conflict: true)
