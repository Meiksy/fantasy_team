require ('minitest/autorun')
require_relative('../team')
require_relative('../player')
require_relative('../bench')
require_relative('../manager')

class TestManager < Minitest::Test

def setup
  @manager = Manager.new("Bon Jovi", "Man Utd", "Barca", "Alloa")  
  @team1 = Team.new("CodeClan Utd", )
end



def test_coach_name
  assert_equal("Bon Jovi", @manager.name)
  
end

def test_manager_add_players
  result = @manager.add_players_to_team(@team1, "Bob", "Steve", "Trev")
  assert_equal(["Bob", "Steve", "Trev"], @team1.players)
  
end


end