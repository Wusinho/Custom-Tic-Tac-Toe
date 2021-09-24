  require_relative './lib/player.rb'
  require_relative './bin/analize.rb'

game = [ 'player1', 'player2']

# puts 'There are 2 players'

player1 = {
  name: '',
  symbol: '',
  starts: false,
  win: false,
  draw: false,
}

player2 = {
  name: '',
  symbol: '',
  starts: false,
  win: false,
  draw: false,
}

@analize = Analize.new

# Player 1 name
puts 'Please enter a name for player1'
  player1[:name] = gets.chomp
  player1[:name] = gets.chomp while player1[:name] == ''
# Player 1 symbol
puts 'Please choose a symbol for player1'
  player1[:symbol] = gets.chomp.upcase
  player1[:symbol] = gets.chomp.upcase while player1[:symbol] == ''
puts 'please Symbol is only one char' if player1[:symbol].length > 1
  player1[:symbol] = gets.chomp.upcase while player1[:symbol].length > 1

# Player 2 name
puts 'Please enter a name for player2'
  player2[:name] = gets.chomp
  player2[:name] = gets.chomp while player2[:name] == ''
puts 'please choose a diferent name' if (player2[:name] == player1[:name])
  player2[:name] = gets.chomp while (player2[:name] == player1[:name])

# Player 2 symbol
puts 'Please choose a symbol for player2'
  player2[:symbol] = gets.chomp.upcase
  player2[:symbol] = gets.chomp.upcase while player2[:symbol] == ''
puts 'please Symbol is only one char or choose a different one' if player2[:symbol].length > 1 || (player2[:symbol] == player1[:symbol])
  player2[:symbol] = gets.chomp.upcase while player2[:symbol].length > 1 || ( player2[:symbol] == player1[:symbol])

# Who starts?
puts "Who starts #{player1[:name]} or #{player2[:name]}, type the correct name  "
  answer = gets.chomp
  answer = gets.chomp while answer == '' 
  answer = gets.chomp while answer != player2[:name] && answer != player1[:name] 
  answer == player1[:name] ? player1[:starts] = true : player2[:starts] = true

puts 'What size of board would you like, plz type a number'
