defmodule Nimrag.Api.StepsDaily do
  use Nimrag.Api.Data

  @type t() :: %__MODULE__{
          calendar_date: String.t(),
          step_goal: integer(),
          total_distance: nil | integer(),
          total_steps: nil | integer()
        }

  defstruct calendar_date: nil, step_goal: 0, total_distance: 0, total_steps: 0

  def schematic() do
    schema(__MODULE__, %{
      field(:calendar_date) => date(),
      field(:step_goal) => int(),
      field(:total_distance) => nullable(int()),
      field(:total_steps) => nullable(int())
    })
  end
end
