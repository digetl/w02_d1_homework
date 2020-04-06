require('minitest/autorun')
require('minitest/reporters')
require_relative('../sports_team')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestSportsTeam < MiniTest::Test

    def setup
        @team = SportsTeam.new("Raith Rovers", ["Dennis", "Alan", "Dave"], "Eugene", 0)
    end

    def test_get_team_name
        assert_equal("Raith Rovers", @team.team_name)
    end

    def test_get_player_name
        assert_equal(["Dennis", "Alan", "Dave"], @team.players)
    end

    def test_get_coach_name
        assert_equal("Eugene", @team.coach)
    end

    def test_update_coach_name
        @team.coach = "Rory"
        assert_equal("Rory", @team.coach)
    end

    def test_add_new_player_to_team
        assert_equal(["Dennis", "Alan", "Dave", "Messi"], @team.add_player_to_team("Messi"))        
    end

    # def test_add_points_to_score__win
    #     @team.score +=3
    #     assert_equal(3, @team.team_wins(true))
    # end

    def test_add_points_to_score__win
        @team.result "win"
        assert_equal(3, @team.score)
    end

    def test_add_points_to_score__lose
        @team.result "lose"
        assert_equal(0, @team.score)
    end

    def test_add_points_to_score__draw
        @team.result "draw"
        assert_equal(1, @team.score)
    end


    
end