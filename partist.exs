defmodule Partlist do
  def stringoflist(alist) do
    Enum.reduce(alist, fn(elem,next) ->"#{elem} #{next}" end)
  end
  def part_list(a)do
        Enum.map(Range.new(1,Enum.count(a)-1), fn(inx)-> {a,b}=Enum.split(a,inx)
        [stringoflist(Enum.reverse(a))|[stringoflist(Enum.reverse(b))]] end)

  end

end
