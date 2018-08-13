defmodule Printer do
  def print do
    IO.inspect Compressor.compress(<<1, 2, 3>>)
  end
end
