defmodule Reducebystep do
  def som(a,b), do: a+b
  def mini(a,b), do: if a<b, do: a, else: b
  def maxi(a,b), do: if a>b, do: a, else: b
  def gcdi(a,a), do: a
  def gcdi(a,b), do: if a>b, do: gcdi(a-b,b), else: gcdi(a,b-a)
  def lcmu(a,b), do: round(a*b/gcdi(a,b))
  def oper_array(fun,[a],init), do: [fun.(a,init)]
  def oper_array(fun,[head|arr],init), do: Enum.concat(oper_array(fun, [head], init), oper_array(fun,arr,fun.(head,init)))
end
