
class Player
  def initialize (name, sign, starts)
    @name = name
    @sign = sign
    @starts = starts
  end
  def to_s
    "Name: #{@name}, Sign: #{@sign}"
  end
end
