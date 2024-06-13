defmodule ProjectNativeTest do
  use ExUnit.Case
  doctest ProjectNative

  test "greets the world" do
    assert ProjectNative.hello() == :world
  end
end
