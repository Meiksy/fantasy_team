require ('minitest/autorun')
require_relative('../team')
require_relative('../player')
require_relative('../bench')
require_relative('../manager')

class TestManager < Minitest::Test

def setup
  @manager = Manager.new("Bon Jovi", "Man Utd", "Barca", "Alloa")  
end

def test_coach_name
  assert_equal("Bon Jovi", @manager.name)
  
end




end