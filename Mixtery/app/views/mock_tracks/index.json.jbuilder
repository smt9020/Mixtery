json.array!(@mock_tracks) do |mock_track|
  json.extract! mock_track, :id, :name, :track_id
  json.url mock_track_url(mock_track, format: :json)
end
