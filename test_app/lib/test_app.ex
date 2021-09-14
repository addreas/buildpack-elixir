defmodule TestApp do
  use Application

  def start(_type, _args) do
    IO.inspect System.get_env(), limit: :infinity

    Supervisor.start_link([], strategy: :one_for_one)
  end
end
