class Team
  attr_reader :team_name, :team_players, :coach
  attr_writer :coach

def initialize(team_name, team_players, coach)
  @team_name = team_name
  @team_players = team_players
  @coach = coach
  @points = 0
end

def add_new_player(new_player)
  @team_players << new_player
end

def is_player_in_team(player)
  for each_player in @team_players
    return true if each_player == player
  end
  return false
end

def update_points(win_or_lose)
  @points += 1 if win_or_lose == true
  @points
end

end
