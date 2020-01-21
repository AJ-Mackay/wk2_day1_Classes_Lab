class SportsTeam

attr_reader :team_name, :players
attr_accessor :coach, :points

  def initialize(team_name, players, coach)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = 0
  end

  def add_player(new_player)
    @players.push(new_player)
  end

  def does_player_exist(existing_player)
    for player in @players
      if player == existing_player
        return true
      else
        return false
      end
    end
  end

  def has_team_won(points)
    if points == "win"
      @points += 1
    end
  end

end
