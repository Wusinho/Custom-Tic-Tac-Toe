require_relative './analize.rb'

class BoardGame

  # def initialize(size, streaks, player1, player2 )
  #   @size = size
  #   @game_board = []
  #   @player1 = player1
  #   @player2 = player2
  #   @streaks = streaks
  # end

  def reset_board
    @game_board = []
  end

  def create_board
    board_size = @size * @size
    @game_board = (0...board_size).to_a
  end

  def display_board
    @board = []
    @size.times do |x|
      gap = x * @size
      @board.push(@game_board[gap...gap+(@size)])
    end
    print_board(@board)
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

  def postion_taken?(input, symbol)
    @game_board[input] != symbol
  end

  def valid_move?(input, symbol)
    input.between(0, @game_board.length-1) && !postion_taken?(input, symbol)
  end

  def to_s
    "#{@player1} #{@player2}"
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
end

