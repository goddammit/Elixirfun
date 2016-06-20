defmodule Partlist do

  def part_list(a)do
        Enum.map(Range.new(1,Enum.count(a)-1), fn(inx)-> {a,b}=Enum.split(a,inx)
        [Enum.join(a, " ")|[Enum.join(b," ")]] end)

  end

end
