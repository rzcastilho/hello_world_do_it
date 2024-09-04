defmodule HelloWorld do
  use DoIt.MainCommand,
    description: "DoIt Hello World Elixir!!!"

  command(HelloWorld.Say)
end
