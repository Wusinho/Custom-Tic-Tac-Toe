require_relative './analize.rb'

class BoardGame
  attr_accessor :game_board, :size

  def initialize(size, streaks, player1, player2 )
    @size = size
    @game_board = []
    @player1 = player1
    @player2 = player2
    @streaks = streaks
  end

  def create_board
    board_size = @size * @size
    @game_board = (0...board_size).to_a
  end

  def display_board
    board = []
    @size.times do |x|
      gap = x * @size
      board.push(@game_board[gap...gap+(@size)])
    end
    print_board(board)
  end

  def print_board(array)
    print "\n"
    array.each_with_index do |arr, index|
      if index == 0
        (@size).times { print '------'} 
        print "\n"
      end
        arr.each do |item|
          print item.to_s.size == 1 ?  "|  #{item} |" :  "| #{item} |"
        end
        print "\n"
        (@size).times { print '------'}
        print "\n"
    end
  end

  def postion_taken?(input, symbol_player1, symbol_player2)
    @game_board[input] == symbol_player1 || @game_board[input] == symbol_player2
  end

  def valid_move?(input, symbol_player1, symbol_player2)
    puts 'plz choose a valid move'
    input.between?(0, @game_board.length-1) && !postion_taken?(input, symbol_player1, symbol_player2)
  end
  def new_move(input, symbol )
      @game_board[input] = symbol
  end


end

class Game < BoardGame
  def initialize(size, streaks, player1, player2 )
    @size = size
    @game_board = []
    @player1 = player1
    @player2 = player2
    @streaks = streaks
  end



  def turns
    
  end
end

