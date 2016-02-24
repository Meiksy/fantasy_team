class Manager

attr_reader(:name, :previous_clubs)

def initialize(name, *previous_clubs)
  @name = name
  @previous_clubs = previous_clubs
  @salary = 500000
end

def add_players_to_team(team, *players)
  for player in players
    team.players.push(player)
  end
  
end

def include_players(team, *players)
  playing = []
  not_playing = []
  for player in players
  if team.players.include?(player) == true
    playing.push(player)
  else
    not_playing.push(player)
  end
  end
  return [playing, not_playing]
end


end