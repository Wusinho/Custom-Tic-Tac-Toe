  require_relative './bin/player.rb'
  require_relative './bin/game.rb'

board_size = 0

  def check_class(data)
    return unless Integer(data, exception: false)
    board_size = Integer(data)
      return false if board_size > 10 || board_size <= 2
    board_size
  end

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

  puts 'Choose a board size between 3-10'
  answer = gets.chomp
  answer = gets.chomp while !check_class(answer)


  # answer = gets.chomp while answer != player2[:name] && answer != player1[:name] 
  # answer == player1[:name] ? player1[:starts] = true : player2[:starts] = true

player_1 = Player.new(
  player1[:name],
  player1[:symbol],
  player1[:starts],
  player1[:win],
  player1[:draw]
)
player_2 = Player.new(
  player2[:name],
  player2[:symbol],
  player2[:starts],
  player2[:win],
  player2[:draw]
)

Game.new(board_size,player_1, player_2)