defmodule Mix.Tasks.ImportProducts do
  require Logger

  def run(_) do
    {:ok, _} = Application.ensure_all_started(:shoplifters_elixirs)

    Logger.info("Started import")
  end
end
