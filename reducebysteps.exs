defmodule Reducebystep do
  #https://www.codewars.com/kata/56efab15740d301ab40002ee/train/elixir
  def som(a,b), do: a+b
  def mini(a,b), do: if a<b, do: a, else: b
  def maxi(a,b), do: if a>b, do: a, else: b
  def gcdi(a,b), do: gcdis(abs(a),abs(b))
  def gcdis(a,0), do: a
  def gcdis(0,b), do: b
  def gcdis(a,b), do: gcdis(b,rem(a,b))
  def lcmu(a,b), do: div(abs(a*b), gcdi(a,b))
  def oper_array(fun,[head|arr],init), do: oper_array(fun,[head|arr],init, [])
  def oper_array(_,[],_, acc), do: Enum.reverse(acc)
  def oper_array(fun,[head|arr],init,acc), do: oper_array(fun,arr,fun.(head,init), [fun.(head,init)|acc])
end
