require('minitest/autorun')
require('minitest/rg')
require_relative('./sports_team')

class TestSportsTeam < MiniTest::Test

  def test_team_name()
    sports_team = SportsTeam.new("Bats", ["Player_1", "Player_2", "Player_3"], "Coach Trev")

    assert_equal("Bats", sports_team.team_name())
  end

  def test_get_players()
    sports_team = SportsTeam.new("Bats", ["Player_1", "Player_2", "Player_3"], "Coach Trev")

    assert_equal(["Player_1", "Player_2", "Player_3"], sports_team.get_players())
  end

  def test_coach()
    sports_team = SportsTeam.new("Bats", ["Player_1", "Player_2", "Player_3"], "Coach Trev")

    assert_equal("Coach Trev", sports_team.coach())
  end

  def test_change_coach()
    sports_team = SportsTeam.new("Bats", ["Player_1", "Player_2", "Player_3"], "Coach Trev")

    sports_team.change_coach("Coach Danny")

    assert_equal("Coach Danny", sports_team.coach())
  end

  def test_add_new_player()
    sports_team = SportsTeam.new("Bats", ["Player_1", "Player_2", "Player_3"], "Coach Trev")

    sports_team.add_new_player("Player_4")

    assert_equal(["Player_1", "Player_2", "Player_3", "Player_4"], sports_team.get_players())
  end

  def test_check_player()
    sports_team = SportsTeam.new("Bats", ["Player_1", "Player_2", "Player_3"], "Coach Trev")

    assert_equal(true, sports_team.check_player("Player_1"))
  end

  def test_points()
    sports_team = SportsTeam.new("Bats", ["Player_1", "Player_2", "Player_3"], "Coach Trev")

    assert_equal(0, sports_team.points())
  end

  def test_add_win()
    sports_team = SportsTeam.new("Bats", ["Player_1", "Player_2", "Player_3"], "Coach Trev")

    sports_team.add_win("win")

    assert_equal(1, sports_team.points())
  end

  def test_add_win__loss()
    sports_team = SportsTeam.new("Bats", ["Player_1", "Player_2", "Player_3"], "Coach Trev")

    sports_team.add_win("loss")

    assert_equal(0, sports_team.points())
  end

end
