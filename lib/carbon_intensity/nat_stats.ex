defmodule ExNationalGrid.CarbonIntensity.NatStats do
  import ExNationalGrid.Helpers

  @moduledoc """
  Carbon Intensity statistics
  """

  @doc """
  Get Carbon Intensity statistics (average, max, mean) between from and to
  datetime. The maximum date range is limited to 30 days.
  """
  def get_intensity_stats_between(from, to) do
    "/intensity/stats/#{from}/#{to}" |> build_url() |> execute!() |> decode!()
  end

  @doc """
  Get block average Carbon Intensity statistics (average, max, mean) between
  from and to datetime. The maximum date range is limited to 30 days.
  The block length must be between 1 and 24 hours and should be an integer.
  """
  def get_block_average_intensity_stats_between(from, to, block) do
    "/intensity/stats/#{from}/#{to}/#{block}" |> build_url() |> execute!() |> decode!()
  end
end
