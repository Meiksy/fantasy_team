require ('minitest/autorun')
require_relative('../team')
require_relative('../player')
require_relative('../bench')
require_relative('../manager')

class TestManager < Minitest::Test

def setup
  @manager = Manager.new("Bon Jovi", "Man Utd", "Barca", "Alloa")  
  @team1 = Team.new("CodeClan Utd", "Bob", "Steve", "Trev")
end



def test_coach_name
  assert_equal("Bon Jovi", @manager.name)
  
end

# def test_manager_add_players
#   result = @manager.add_players_to_team(@team1, "Bob", "Steve", "Trev")
#   assert_equal(["Bob", "Steve", "Trev"], @team1.players)
  
# end

def test_include_players
  result = @manager.include_players(@team1, "Brian", "Trev", "Bob", "Steve", "Jo")
  assert_equal([["Trev", "Bob", "Steve"], ["Brian", "Jo"]], result)
end


end