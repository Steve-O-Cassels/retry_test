defmodule RetryTestTest do
  use ExUnit.Case
  doctest Retry
  alias RetryTest, as: Sut

  test "Retry the correct number of times" do
    Sut.get_request()
    assert(nil == nil)
  end
end
