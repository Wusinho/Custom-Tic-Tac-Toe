
@size = 0
  def check_class(data)
    return unless Integer(data, exception: false)
    @size = Integer(data)
      return false if @size > 10 || @size <= 2
    @size
  end

puts 'What size of board would you like, plz type a number'
  answer = gets.chomp
  answer = gets.chomp while !check_class(answer)
    

