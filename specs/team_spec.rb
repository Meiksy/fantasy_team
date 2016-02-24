require ('minitest/autorun')
require_relative('../team')


class TestTeam < Minitest::Test

def setup
  @team1 = Team.new("CodeClan United", "Bill", "Ben")
end

def test_return_players
  @team1.players
assert_equal("Bill" "Ben", @team1.players)
end




end