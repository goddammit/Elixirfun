defmodule Perm do

  def permute(''), do: ['']
  def permute(charlist) do
    Enum.flat_map(charlist, fn(char) ->
      charlist
      |>List.delete(char)
      |>permute
      |>Enum.map(fn(perm)->[char|perm] end)
    end)
  end
  def permutestring(listofperms), do: Enum.map(listofperms, fn(perm)->List.to_string(perm) end)

  def getallperm(string), do: String.to_char_list(string)|>permute|>permutestring
  def contain_all_perms("", _), do: true
  def contain_all_perms(strng, arr) do
    Enum.all?(Enum.map(getallperm(strng), fn(perm)-> Enum.member?(arr, perm) end), fn(x)->x end)
  end

end
