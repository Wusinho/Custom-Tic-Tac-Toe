class Analize
  
  def eval_array(size, streak, arr, simbol)
    return if arr == []
    n_times =  size - (streak -1)
      n_times.times do |count|
        # p arr[count...streak+count]
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

  def check_top_left_to_right(arr, size, streak, simbol ) 
    eval_arr = []
    eval_arr2 = []
    max_times = size - streak + 1 # compared with streaks

    max_times.times do |count|
  
      arr.length.times do |index|
        first_half = arr[count+((size+1)*index)]
        second_half = arr[(count*size)+((size+1)*index)]
        
        eval_arr << first_half if eval_arr.length < (size - count)
        eval_arr2 << second_half if eval_arr2.length < (size - count) && count > 0
      end

      return true if eval_array(size, streak, eval_arr, simbol)
      return true if eval_array(size, streak, eval_arr2, simbol)
  
    eval_arr = []
    eval_arr2 = []
  
    end
    false
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


# array2 = [  0, 'X', 2, 3,
#             4, 5, 'X', 7,
#             8, 9,'X','X',
#            12,13,14,'X' ]

# array3 = [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 
#            9,10,11,12,13,14,15,16,17,
#           18,19,20,21,22,23,24,25,26,
#           27,28,29,30,31,32,33,34,35,
#           36,37,38,39,40,41,42,43,44,
#           45,46,47,48,49,50,51,52,53,
#           54,55,56,57,58,59,60,61,62,
#           63,64,65,66,67,68,69,70,71,
#           72,73,74,75,76,77,78,79,80]

# # game_size1 = Math.sqrt(array.length).to_i
# game_size2 = Math.sqrt(array2.length).to_i
# game_size3 = Math.sqrt(array3.length).to_i
# game_streak1 = 3
# game_streak2 = 4
# player_symbol = 'X'

# # check_top_left_to_right(array, game_size1, game_streak1, player_symbol ) 
# p checking.check_top_left_to_right(array2, game_size2, game_streak1, player_symbol ) 
# p checking.check_top_left_to_right(array3, game_size3, game_streak1, player_symbol ) 




