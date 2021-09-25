  require_relative './bin/player.rb'
  require_relative './bin/game.rb'

counter_token = 0

  def check_class(data, counter, max_num, min_num)
    return unless Integer(data, exception: false)
    counter = Integer(data)
      return false if counter > max_num || counter <= min_num
    counter
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

  puts 'Choose a board size between 5-10'
  board_size = gets.chomp
  board_size = gets.chomp while !check_class(board_size, counter_token, 10, 4)

  puts 'Choose between 3-5 streaks to win'
  win_streak = gets.chomp
  win_streak = gets.chomp while !check_class(win_streak, counter_token, 6, 2)

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

nuevo_juego = Game.new(board_size.to_i, win_streak.to_i,player_1, player_2)
nuevo_juego.create_board
nuevo_juego.display_board
