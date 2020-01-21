require("minitest/autorun")
require("minitest/reporters")
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../classes_lab_part_b")

class TestSportsTeam < Minitest::Test

  def setup
    @team = SportsTeam.new("Avengers", ["Hawkeye", "Black Widow", "Thor", "Rocket"], "Tony Stark")
  end

  def test_team_name
    assert_equal("Avengers", @team.team_name)
  end

  def test_players
    assert_equal(["Hawkeye", "Black Widow", "Thor", "Rocket"], @team.players)
  end

  def test_coach
    assert_equal("Tony Stark", @team.coach)
  end

  def test_set_coach
    @team.set_coach = "Bruce Banner"
    assert_equal("Bruce Banner", @team.coach)
  end

  def test_add_player
    @team.add_player("Groot")
    assert_equal(["Hawkeye", "Black Widow", "Thor", "Rocket", "Groot"], @team.players)
  end

  def test_does_player_exist
    existing_player = @team.does_player_exist("Loki")
    assert_equal(false, existing_player)
  end

  def test_can_get_points
  assert_equal(0, @team.points)
  end

  def test_has_team_won
    @team.has_team_won("win")
    assert_equal(1, @team.points)
  end
end
