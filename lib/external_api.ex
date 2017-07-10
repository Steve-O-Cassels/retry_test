defmodule ExternalApi do
  defmodule Error do
    defexception [:reason]

    def exception(reason),
      do: %__MODULE__{reason: reason}

    def message(%__MODULE__{reason: reason}),
      do: ExternalApi.format_error(reason)
  end

  def do_something(),
    do: {:error, {:not_one, "nothing"}}
  def do_something(value) do
    val = "Hit do_something"
    val
  end

  def format_error({:not_one, value}),
    do: "#{inspect value} is not one"

end
