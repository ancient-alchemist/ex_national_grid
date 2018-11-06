defmodule ExNationalGrid.Helpers do
  @base_url "https://api.carbonintensity.org.uk"
  @default_headers [
    {:"Content-Type", "application/json"}
  ]

  def build_url(resource) when is_binary(resource), do: @base_url <> resource

  def build_url(resource) when is_nil(resource), do: {:error, "Missing resource"}

  def build_url(_), do: {:error, "Invalid resource"}

  def execute!(url), do: url |> HTTPoison.get!(%{}, @default_headers)

  def decode!(response), do: response.body |> Poison.decode!()
end
