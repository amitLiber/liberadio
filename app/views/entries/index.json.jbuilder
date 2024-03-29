json.array!(@entries) do |entry|
  json.extract! entry, :id, :user_id, :status, :unique_id, :duration, :score, :thumbnail
  json.url entry_url(entry, format: :json)
end
