defmodule Printererror do

  def printer_error(s) do
    "#{String.to_char_list(s)|> Enum.reduce( 0,
      fn(char, acc) -> if char >109 do
                        1 + acc
                        else
                          acc
                      end
      end)}/#{String.length(s)}"

  end

end
