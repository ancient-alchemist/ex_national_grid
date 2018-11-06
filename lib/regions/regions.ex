defmodule ExNationalGrid.Regions do
  @regions %{
    "1" => "North Scotland",
    "2" => "South Scotland",
    "3" => "North West England",
    "4" => "North East England",
    "5" => "Yorkshire",
    "6" => "North Wales",
    "7" => "South Wales",
    "8" => "West Midlands",
    "9" => "East Midlands",
    "10" => "East England",
    "11" => "South West England",
    "12" => "South England",
    "13" => "London",
    "14" => "South East England",
    "15" => "England",
    "16" => "Scotland",
    "17" => "Wales"
  }

  def get_by_id(id) when is_binary(id), do: @regions[id]

  def get_by_id(id) when is_integer(id), do: @regions[Integer.to_string(id)]

  def get_by_id(id) when is_nil(id), do: {:error, "Missing Region ID"}

  def get_by_id(_), do: {:error, "Invalid Region ID"}
end
