defmodule Printer.CLI do
  def main(args \\ []) do
    IO.inspect Compressor.compress(<<1, 2, 3>>)
  end
end
