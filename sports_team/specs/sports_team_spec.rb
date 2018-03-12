require('minitest/autorun')
require_relative('../sports_team.rb')

class TestTeam < MiniTest::Test

  def test_team_getter()
    team = Team.new("Dolphins", ["Player1", "Player2", "Player3"], "Coachy McCoachFace")

    assert_equal("Dolphins", team.team_name())
    assert_equal(["Player1", "Player2", "Player3"], team.team_players())
    assert_equal("Coachy McCoachFace", team.coach())
  end

  def test_team_setter()
    team = Team.new("Dolphins", ["Player1", "Player2", "Player3"], "Coachy McCoachFace")
    team.coach = "Coach Stupid"

    assert_equal("Coach Stupid", team.coach)
  end

  def test_add_new_player()
    team = Team.new("Dolphins", ["Player1", "Player2", "Player3"], "Coachy McCoachFace")
    new_team = ["Player1", "Player2", "Player3", "Player4"]

    assert_equal(new_team, team.add_new_player("Player4"))
  end

  def test_is_player_in_team__true()
    team = Team.new("Dolphins", ["Player1", "Player2", "Player3"], "Coachy McCoachFace")

    assert_equal(true, team.is_player_in_team("Player1"))
  end

  def test_is_player_in_team_false()
    team = Team.new("Dolphins", ["Player1", "Player2", "Player3"], "Coachy McCoachFace")
    assert_equal(false, team.is_player_in_team("Random person"))
  end

  def test_update_points__win()
    team = Team.new("Dolphins", ["Player1", "Player2", "Player3"], "Coachy McCoachFace")

    assert_equal(1, team.update_points(true))
  end

  def test_update_points__lose()
    team = Team.new("Dolphins", ["Player1", "Player2", "Player3"], "Coachy McCoachFace")

    assert_equal(0, team.update_points(false))
  end

end
