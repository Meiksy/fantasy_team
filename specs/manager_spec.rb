require ('minitest/autorun')
require_relative('../team')
require_relative('../player')
require_relative('../bench')
require_relative('../manager')

class TestManager < Minitest::Test

def setup
  @team1 = Team.new("CodeClan Utd", "Bob", "Steve", "Trev", "Gavin")
  @bench1 = Bench.new("Po", "Lala")
  @manager = Manager.new("Bon Jovi", "Man Utd", "Barca", "Alloa", @bench1)  
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

def test_sub_players
  result = @manager.sub(@team1, "Trev", "Bob", @bench1)
  assert_equal(["Po", "Lala", "Trev", "Bob"], @bench1.subs)
  
end

end







