defmodule Hasher do
  def hash(message) do
    :snappyer.compress(message)
  end
end
