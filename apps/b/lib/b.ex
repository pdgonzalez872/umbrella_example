defmodule B do
  @moduledoc """
  Documentation for B.
  """

  @doc """
  Hello world.

  ## Examples

      iex> B.hello()
      :world

  """
  def hello do
    shim()
    :world
  end

  def shim() do
    require IEx; IEx.pry
  end
end
