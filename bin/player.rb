
class Player < Person
  attr_accessor :sign, :symbol, :starts, :win, :draw
  def initialize(name, symbol, starts, win, draw)
    @name = name
    @symbol = symbol
    @starts = starts
    @win = win,
    @draw = draw,
  end

end
