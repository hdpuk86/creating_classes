  class SportsTeam

    def initialize(team_name, team_players, coach)
      @team_name = team_name
      @team_players = team_players
      @coach = coach
      @points = 0
    end

    def team_name()
      return @team_name
    end

    def get_players()
      return @team_players
    end

    def coach()
      return @coach
    end

    def change_coach(new_coach)
      @coach = new_coach
    end

    def add_new_player(new_player)
      @team_players << new_player
    end

    def check_player(player_name)
      return true if @team_players.include?(player_name)
    end

    def points()
      return @points
    end

    def add_win(win_or_loss)
      return @points += 1 if win_or_loss == "win"
      return @points if win_or_loss == "loss"
    end

  end
