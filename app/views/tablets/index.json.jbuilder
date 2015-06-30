json.array!(@tablets) do |tablet|
  json.extract! tablet, :id, :name, :merchant_id, :user_id
  json.url tablet_url(tablet, format: :json)
end
