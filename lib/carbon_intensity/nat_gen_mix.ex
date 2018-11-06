defmodule ExNationalGrid.CarbonIntensity.NatGenMix do
  import ExNationalGrid.Helpers

  @moduledoc """
  Generation Mix for the GB power system. Contains the following fuel
  types: gas, coal, nuclear, biomass, hydro, imports, solar, wind, other.
  """

  @doc """
  Get generation mix for current half hour.
  """
  def get_generation do
    "/generation" |> build_url() |> execute!() |> decode!()
  end

  @doc """
  Get generation mix for the past 24 hours.
  """
  def get_generation_mix_for_past_24_hours(from) do
    "/generation/#{from}/pt24h" |> build_url() |> execute!() |> decode!()
  end

  @doc """
  Get generation mix between from and to datetimes.
  """
  def get_generation_mix_between(from, to) do
    "/generation/#{from}/#{to}" |> build_url() |> execute!() |> decode!()
  end
end
