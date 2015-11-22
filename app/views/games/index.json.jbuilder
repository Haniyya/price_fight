json.array!(@games) do |game|
  json.extract! game, :id, :rounds_id, :players_id, :number_of_players, :winner_id
  json.url game_url(game, format: :json)
end
