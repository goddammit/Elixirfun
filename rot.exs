defmodule Rot do
  def rotate(""), do: []
  def rotate(string) do
    Enum.map(Range.new(0,(String.length(string)-1)),fn(indx) ->
      cond do
        indx == 0 -> string
        true -> "#{(String.slice(string,indx..String.length(string)))}#{(String.slice(string,0..indx-1))}"
      end
    end)


  end

end
