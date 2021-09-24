class BoardGame

  def initialize(size, player1, player2 )
    @size = size
    @game_board = []
    @player1 = player1
    @player2 = player2
  end

  def reset_board
    @game_board = []
  end

  def create_board
    board_size = @size * @size
    @game_board = (0...board_size).to_a
    # board_size.times do
    #   @game_board << ' '
    # end
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
    array.each do |arr|
        arr.each do |item|
          
          if item.to_s.size == 1
            print "|  #{item} |"

          else
            print "| #{item} |"
          end
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
    "the board size is #{@game_board.length}"
  end

end



newboard = BoardGame.new(4)
newboard.create_board
newboard.display_board
# newboard.display_board

