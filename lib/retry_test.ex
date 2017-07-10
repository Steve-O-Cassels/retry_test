defmodule RetryTest do
  use Retry
  alias ExternalApi

  def get_request() do
    result = Retry.retry with: lin_backoff(500, 2) |> cap(2_000) |> Stream.take(5) do
      ExternalApi.do_something("hit it") # fails if other system is down
      #   IO.inspect ("HIT")
    end
    IO.inspect result
  end

end
