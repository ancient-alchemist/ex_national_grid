defmodule ExNationalGrid.CarbonIntensity.RegionalIntensity do
  import ExNationalGrid.Helpers

  @moduledoc """
  Regional Carbon Intensity data
  """

  @doc """
  Get Regional Carbon Intensity data for current half hour.
  """
  def get_intensity do
    "/regional" |> build_url() |> execute!() |> decode!()
  end

  @doc """
  Get Carbon Intensity data for current half hour for England.
  """
  def get_intensity_for_england do
    "/regional/england" |> build_url() |> execute!() |> decode!()
  end

  @doc """
  Get Carbon Intensity data for current half hour for Scotland.
  """
  def get_intensity_for_scotland do
    "/regional/scotland" |> build_url() |> execute!() |> decode!()
  end

  @doc """
  Get Carbon Intensity data for current half hour for Wales.
  """
  def get_intensity_for_wales do
    "/regional/wales" |> build_url() |> execute!() |> decode!()
  end

  @doc """
  Get Regional Carbon Intensity data for current half hour for specified
  postcode.
  """
  def get_intensity_for_postcode(postcode) do
    "/regional/postcode/#{postcode}" |> build_url() |> execute!() |> decode!()
  end

  @doc """
  Get Regional Carbon Intensity data for current half hour for specified region.
  """
  def get_intensity_for_region(regionid) do
    "/regional/regionid/#{regionid}" |> build_url() |> execute!() |> decode!()
  end

  @doc """
  Get Regional Carbon Intensity data for next 24h.
  """
  def get_intensity_for_next_24hrs(from) do
    "/regional/intensity/#{from}/fw24h" |> build_url() |> execute!() |> decode!()
  end

  @doc """
  Get Regional Carbon Intensity data for next 24h for specified postcode.
  """
  def get_intensity_for_next_24hrs_for_postcode(from, postcode) do
    "/regional/intensity/#{from}/fw24h/postcode/#{postcode}"
    |> build_url()
    |> execute!()
    |> decode!()
  end

  @doc """
  Get Regional Carbon Intensity data for next 24h for specified region.
  """
  def get_intensity_for_next_24hrs_for_region(from, regionid) do
    "/regional/intensity/#{from}/fw24h/regionid/#{regionid}"
    |> build_url()
    |> execute!()
    |> decode!()
  end

  @doc """
  Get Regional Carbon Intensity data for next 48h.
  """
  def get_intensity_for_next_48hrs(from) do
    "/regional/intensity/#{from}/fw48h" |> build_url() |> execute!() |> decode!()
  end

  @doc """
  Get Regional Carbon Intensity data for next 48h for specified postcode.
  """
  def get_intensity_for_next_48hrs_for_postcode(from, postcode) do
    "/regional/intensity/#{from}/fw48h/postcode/#{postcode}"
    |> build_url()
    |> execute!()
    |> decode!()
  end

  @doc """
  Get Regional Carbon Intensity data for next 48h for specified postcode.
  """
  def get_intensity_for_next_48hrs_for_region(from, regionid) do
    "/regional/intensity/#{from}/fw48h/regionid/#{regionid}"
    |> build_url()
    |> execute!()
    |> decode!()
  end

  @doc """
  Get Regional Carbon Intensity data for past 24h.
  """
  def get_intensity_for_past_24hrs(from) do
    "/regional/intensity/#{from}/pt24h" |> build_url() |> execute!() |> decode!()
  end

  @doc """
  Get Regional Carbon Intensity data for past 24h for specified postcode.
  """
  def get_intensity_for_past_24hrs_for_postcode(from, postcode) do
    "/regional/intensity/#{from}/pt24h/postcode/#{postcode}"
    |> build_url()
    |> execute!()
    |> decode!()
  end

  @doc """
  Get Regional Carbon Intensity data for past 24h for specified region.
  """
  def get_intensity_for_past_24hrs_for_region(from, regionid) do
    "/regional/intensity/#{from}/pt24h/regionid/#{regionid}"
    |> build_url()
    |> execute!()
    |> decode!()
  end

  @doc """
  Get Regional Carbon Intensity data between specified datetimes.
  """
  def get_intensity_between(from, to) do
    "/regional/intensity/#{from}/#{to}" |> build_url() |> execute!() |> decode!()
  end

  @doc """
  Get Regional Carbon Intensity data between specified datetimes.
  """
  def get_intensity_between_for_postcode(from, to, postcode) do
    "/regional/intensity/#{from}/#{to}/postcode/#{postcode}"
    |> build_url()
    |> execute!()
    |> decode!()
  end

  @doc """
  Get Regional Carbon Intensity data between specified datetimes.
  """
  def get_intensity_between_for_region(from, to, regionid) do
    "/regional/intensity/#{from}/#{to}/regionid/#{regionid}"
    |> build_url()
    |> execute!()
    |> decode!()
  end
end
