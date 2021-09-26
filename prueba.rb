def check_top_left_to_right(arr, size, streak, simbol ) 
  arr_check = []
  count = 0
  until count == 5 

    arr.each_with_index do |element, index|
      # p "valor del index: #{index}, valor del count:  #{count}"
      
      if (index ) % (size + 1) == 0
        arr_check << element
      elsif count > 0
        arr_check << arr[count]
      end
    end

  p arr_check 
    arr_check=[]
    count += 1
  end

end


# check_top_right_to_left

# array = [ 'X',1, 2,
#            3,'X',5,
#            6, 7,'X' ]

array2 = [ 0, 1,2, 3,
            4,'X',6, 7,
            8, 9,'X',11,
           12,13,14, 15 ]
# array3 = [ 'X', 1, 2, 3, 4,
#             5,'X', 6, 7, 8,
#             9,10,'X',12,13,
#            14,15,16,'X',18,
#            19,20,21,22, 23 ]

# game_size1 = Math.sqrt(array.length).to_i
game_size2 = Math.sqrt(array2.length).to_i
# game_size3 = Math.sqrt(array3.length).to_i
game_streak1 = 3
game_streak2 = 4
player_symbol = 'X'

# check_top_left_to_right(array, game_size1, game_streak1, player_symbol ) 
check_top_left_to_right(array2, game_size2, game_streak1, player_symbol ) 
# check_top_left_to_right(array3, game_size3, game_streak2, player_symbol ) 