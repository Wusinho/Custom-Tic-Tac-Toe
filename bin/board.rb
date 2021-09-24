class BoardGame

  def initialize(size)
    @size = size
    @game_board = []
    # @player1 = player1
    # @player2 = player2
  end

  def reset_board
    @game_board = []
  end

  def create_board
    board_size = @size * @size
    # @game_board = (0...board_size).to_a
    board_size.times do
      @game_board << ''
    end
  end

  def display_board
    
    @size.times do |x|
      puts "#{@game_board[x*@size...(x*@size)+(@size)]} "
    end
  end

  def to_s
    "the board size is #{@game_board.length}"
  end

end



newboard = BoardGame.new(5)
newboard.create_board
newboard.display_board
# newboard.display_board

