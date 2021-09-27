  require_relative './bin/game.rb'

  def check_class(data, max_num, min_num)
    return unless Integer(data, exception: false)
    counter = Integer(data)
      return false if counter > max_num || counter <= min_num
    true
  end

  round =0

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
# player1 = {
#   name: 'heber',
#   symbol: 'X',
#   starts: false,
#   win: false,
#   draw: false,
# }

# player2 = {
#   name: 'juan',
#   symbol: 'T',
#   starts: true,
#   win: false,
#   draw: false,
# }

# Player 1 name
puts 'Please enter a name for player1'
  player1[:name] = gets.chomp
  player1[:name] = gets.chomp while player1[:name] == ''
# Player 1 symbol
puts "Please choose a symbol for #{player1[:name]}"
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
puts "Please choose a symbol for #{player2[:name]}"
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
  board_size = gets.chomp
  board_size = gets.chomp while !check_class(board_size, 10, 2)

  puts 'Choose between 3-5 streaks to win'
  win_streak = gets.chomp
  win_streak = gets.chomp while !check_class(win_streak, 5, 2)

  until board_size.to_i >= win_streak.to_i
    puts "your current board size #{board_size} < #{win_streak} your current streak , choose a bigger board"
    board_size = gets.chomp while !check_class(board_size, 10, 4)

  end

max_rounds = board_size.to_i * board_size.to_i

first_player = player2[:starts] ? player2 : player1
second_player = !player2[:starts] ? player2 : player1

game = BoardGame.new(board_size.to_i, win_streak.to_i,first_player, second_player)
game.create_board
game.display_board

  until player1[:win] || player2[:win]

    @current_player = round.even? ? first_player : second_player
  print "\n"
  puts "#{@current_player[:name]} please choose a valid space"
  print "\n"
    players_move = gets.chomp.to_i
    players_move = gets.chomp.to_i while !game.valid_move?(players_move, first_player[:symbol], second_player[:symbol])
  puts "#{@current_player[:name]} choose #{players_move}"
    game.new_move(players_move,  @current_player[:symbol])
    game.display_board
    # p game.check_win(@current_player[:symbol])
    puts "#{@current_player[:name]} WINS!" if game.check_win(@current_player[:symbol])
    @current_player[:win] = game.check_win(@current_player[:symbol]) if game.check_win(@current_player[:symbol])

    round += 1
  puts "DRAW" if round == max_rounds
    break if round == max_rounds
  end
