defmodule Compressor do
  def compress(message) do
    :snappyer.compress(message)
  end
end
