defmodule Reducebystep do
  def som(a,b), do: a+b
  def mini(a,b), do: if a<b, do: a, else: b
  def maxi(a,b), do: if a>b, do: a, else: b
  def gcdi(a,a), do: a
  def gcdi(a,b), do: if a>b, do: gcdi(a-b,b), else: gcdi(a,b-a)
  def lcmu(a,b), do: round(a*b/gcdi(a,b))
#  def reduce([a], afunc, acc), do: afunc.(acc,a)
#  def reduce([head|tail],afunc, acc), do: reduce(tail, afunc, afunc.(acc,head))
end
