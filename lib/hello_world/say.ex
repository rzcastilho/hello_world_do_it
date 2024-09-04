defmodule HelloWorld.Say do
  use DoIt.Command,
    description: "hello message"

  argument(:message, :string, "hello message")

  option(:template, :string, "message template", default: "Hello <%= message %>!!!")

  def run(%{message: message}, %{template: template}, _context) do
    template
    |> EEx.eval_string(message: message)
    |> IO.puts()
  end
end
