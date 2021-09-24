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
    array_2D_print(@board)
  end


  def print_table(table, margin_width = 2)
  
    column_widths = []
    table.each do |row|
      row.each.with_index do |cell, column_num|
        column_widths[column_num] = [ column_widths[column_num] || 0, cell.to_s.size ].max
      end
    end
    p column_widths
  
    puts (table.collect do |row|
      row.collect.with_index do |cell, column_num|
        cell.to_s.ljust(column_widths[column_num] + margin_width)
      end.join
    end)

  end

  def array_2D_print(array)
    array.each do |arr|
        arr.each do |item|
          
          if item.to_s.size == 1
            print "|  #{item} |"

          else
            print "| #{item} |"
          end
        end
        print "\n"
        (@size*6).times { print '-'}
        print "\n"
    end
  end

  def to_s
    "the board size is #{@game_board.length}"
  end

end



newboard = BoardGame.new(4)
newboard.create_board
newboard.display_board
# newboard.display_board

