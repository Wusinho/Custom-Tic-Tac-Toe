class Analize
  
  def eval_array(size, streak, arr, simbol)
    n_times =  size - (streak -1)
      n_times.times do |count|
        return true && arr[count...streak+count].all?{|x| x == simbol} 
      end
  end

  def check_rows(arr, size, streak, simbol )
      size.times do |index|
         eval_arr = arr[index*size...size*(index+1)]

        return true if eval_array(size, streak, eval_arr, simbol)

      end
    false
  end 

  def check_collumns(arr, size, streak, simbol )
    eval_arr = []

    size.times do |count|
      arr.each_with_index do |element, index|
        if (index+count) % size == 0  
          eval_arr << element
        end
      end

      return true if eval_array(size, streak, eval_arr, simbol)
      eval_arr = []
    
    end
    false
  end

    def check_top_left_to_right(arr, size, simbol ) 
      arr_check = []
      arr.each_with_index do |element, index|
        if (index) % (size + 1) == 0
          arr_check << element
          p arr_check
        end
      end
      if arr_check.all? {|x| x == simbol} 
         
        return "#{name} WINS!!!!!!"  
      end
    end

    def check_down_left_to_right(arr, size, simbol )
      arr_check = []
      arr.each_with_index do |element, index|
        if (index) % (size-1) == 0 and index != 0 and index != ((size**2)-1)   
          arr_check << element
          p arr_check
        end
      end
      if arr_check.all? {|x| x == simbol} 
          
         return "#{name} WINS!!!!!!"  
      end
    end

end


checking = Analize.new

# check_rows
# array = [ '1','X','2','X',5,6,7,8,9,10,11,12,'X','X','X','X']
# array2 = [ 1,2,3,4,'X','X','X','X',9,10,11,12,13,14,15,16]
# array3 = [ 1,2,3,4,5,6,'X','X','X']

# game_size = Math.sqrt(array.length).to_i
# game_size3 = Math.sqrt(array3.length).to_i
# game_streak = 4
# player_symbol = 'X'

# p checking.check_rows(array, game_size, game_streak, player_name, player_symbol)
# p checking.check_rows(array2, game_size, game_streak, player_name, player_symbol)
# p checking.check_rows(array3, game_size3, game_streak, player_name, player_symbol)

# check_collumns
# array = [ 0,'X',2,
#           3,'X',5,
#           6,7,8 ]

# array2 = [ 0,'X',2,'X',
#            4,'X',6,'X',
#            8,'X',10,'X',
#           12,13,14,'X' ]
# game_size1 = Math.sqrt(array.length).to_i
# game_size2 = Math.sqrt(array2.length).to_i
# game_streak1 = 3
# game_streak2 = 4
# player_symbol = 'X'

# p checking.check_collumns(array, game_size1, game_streak1, player_symbol )
# p checking.check_collumns(array2, game_size2, game_streak2,player_symbol )


# check_top_right_to_left
# array = [ 'X','0','m',
#           '2','X',4,
#           'l','4','X' ]

# check_down_left_to_right
# array = [ 'r','0','X',
#           '2','X',4,
#           'X','4','t' ]


# p checking.check_top_left_to_right(array, board_game, player_name, player_symbol ) 
# p checking.check_down_left_to_right(array, board_game, player_name, player_symbol )





