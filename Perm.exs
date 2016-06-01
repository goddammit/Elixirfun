defmodule Perm do
  def stringtocharlist(string), do: String.to_char_list(string)
  def permute(''), do: ['']
  def permute(charlist) do
    Enum.flat_map(charlist, fn(char) ->
      charlist
      |>List.delete(char)
      |>permute
      |>Enum.map(fn(perm)->[char|perm] end)
    end)
  end

  #do: Enum.flat_map(charlist, fn(char) ->
  #  Enum.map(permute(List.delete(charlist, char)), fn(perm) -> [char|perm] end)
  #  end)
  def permutestring(listofperms), do: Enum.map(listofperms, fn(perm)->List.to_string(perm) end)


end
