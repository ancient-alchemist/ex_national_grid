defmodule ExNationalGrid.CarbonIntensity.NatIntensity do
  import ExNationalGrid.Helpers

  @moduledoc """
  Carbon Intensity data
  """

  @doc """
  Get Carbon Intensity data for current half hour.
  """
  def get_intensity do
    "/intensity" |> build_url() |> execute!() |> decode!()
  end

  @doc """
  Get Carbon Intensity data for today.
  """
  def get_intensity_for_today do
    "/intensity/date/" |> build_url() |> execute!() |> decode!()
  end

  @doc """
  Get Carbon Intensity data for a specific date.
  """
  def get_intensity_for_date(date) do
    "/intensity/date/#{date}" |> build_url() |> execute!() |> decode!()
  end

  @doc """
  Get Carbon Intensity data for a specific date and half hour settlement period.
  """
  def get_intensity_for_date_and_period(date, period) do
    "/intensity/date/#{date}/#{period}" |> build_url() |> execute!() |> decode!()
  end

  @doc """
  Get Carbon Intensity factors for each fuel type.
  """
  def get_intensity_for_each_fuel_type do
    "/intensity/factors" |> build_url() |> execute!() |> decode!()
  end

  @doc """
  Get Carbon Intensity data for specific half hour period. All times provided
  in UTC (+00:00).
  """
  def get_intensity_for_half_hour_period(from) do
    "/intensity/#{from}" |> build_url() |> execute!() |> decode!()
  end

  @doc """
  Get Carbon Intensity data between the {from} datetime specified and 24hrs
  before.
  """
  def get_intensity_24hrs_forwards_from_datetime(from) do
    "/intensity/#{from}/fw24h" |> build_url() |> execute!() |> decode!()
  end

  @doc """
  Get Carbon Intensity data between the {from} datetime specified and 48hrs
  after.
  """
  def get_intensity_48hrs_forwards_from_datetime(from) do
    "/intensity/#{from}/fw48h" |> build_url() |> execute!() |> decode!()
  end

  @doc """
  Get Carbon Intensity data between the {from} datetime specified and 24hrs
  before.
  """
  def get_intensity_24hrs_in_the_past_for_datetime(from) do
    "/intensity/#{from}/pt24h" |> build_url() |> execute!() |> decode!()
  end

  @doc """
  Get Carbon Intensity data between the {from} and {to} datetimes. The maximum
  date range is limited to 14 days.
  """
  def get_intensity_data_between(from, to) do
    "/intensity/#{from}/#{to}" |> build_url() |> execute!() |> decode!()
  end
end
