defmodule FirstProject do
  @moduledoc """
  Documentation for `FirstProject`.
  """

 def methods() do
    IO.puts("1.get_list()\n2.get_first_item()\n3.remove_first_item()\n4.add_item()\n5.remove_item()\n6.check_for_item()\n7.item_count()\n8.format_list()\n9.occurance_count()")
 end

  @doc """
  Returns the `list`.

  Returns `list` of `strings`

  ## Examples

       iex> FirstProject.get_list()
       ["Elixir programming","Java programming","Python programming","C","C++","C#"]
  """

  def get_list() do
    ["Elixir programming","Java programming","Python programming","C","C++","C#"]
  end

  def get_first_item(list) do
    hd(list)
  end

  def remove_first_item(list) do
    tl(list)
  end

  def add_item(list, item) do
    list
    |> Enum.reverse()
    |> prepend(item)
    |> Enum.reverse()
  end

  def remove_item(list, index) do
    List.delete_at(list, index)
  end

  def check_for_item(list, item) do
    if item in list , do: IO.puts("Yes...i'm here...") , else: IO.puts("No...Sorry!")
  end

  def item_count([]) , do: 0

  def item_count([_head | tail]) do
     1 + item_count(tail)
  end

  def format_list(list) do
    Enum.map(list ,
     fn x -> x |> String.downcase() |> String.replace(" ", "_") end )
  end

  def occurance_count([], _item) , do: 0

  def occurance_count([item | tail] , item) do
    1 + occurance_count(tail , item)
  end

  def occurance_count([_head | tail] , item) do
     occurance_count(tail , item)
  end

  defp prepend(list, value) do
    [value | list]
  end

end
