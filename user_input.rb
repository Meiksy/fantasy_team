require_relative('team')
require_relative('player')
require_relative('bench')
require_relative('manager')

puts "Name your manager"
name = gets.chomp

puts "Name your previous clubs"
text = gets.chomp
clubs = text.split
manager1 = Manager.new(name, clubs)
puts "Name your team"
team_name = gets.chomp
puts "Who is in your starting team?"
players = gets.chomp
team1 = Team.new("Bayern", players)

puts "Add players to your starting line up"
player = gets.chomp
manager1.add_players_to_team(team1, player)


puts team1.name
puts team1.players

