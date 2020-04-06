class SportsTeam

attr_reader :team_name
attr_accessor :coach, :players, :score

    def initialize(team_name, players, coach, score)
        @team_name = team_name
        @players = players
        @coach = coach
        @score = score
    end

    def add_player_to_team(new_player)
        if players.include?(new_player) == false
        players.push(new_player)
        end
        return players
    end

    # def team_wins(result)
    
    #     if result == true
    #         return score
    #         # score = 3
    #     end
    #     # return score
    # end

    def result(result)
        @score += 3 if result == "win"
        @score += 1 if result == "draw"
        return score
      end


end
