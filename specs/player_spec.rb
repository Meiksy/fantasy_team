require ('minitest/autorun')
require_relative('../player')


class TestPlayer < Minitest::Test

def setup
  @player1 = Player.new("Tony", "Midfield", "7")
end

def test_players_name
  assert_equal("Tony", @player1.name)
end

def test_players_position
  assert_equal("Midfield", @player1.position)
end









end