def check_down_left_to_right(arr, size, streak, simbol )
  arr_check = []
  arr_check2 = []
  max_times = size - streak + 1 # compared with streaks
  safe_streak = streak # save streak, in case it iterates
  index_start = streak - 1
  safe_size = size - 1 # minu 1 because we don't need to repeat the biggest line in 2nd loop


  max_times.times do |count|

    safe_streak.times do | index|
      first_half = arr[(index_start+count)+(index*(size-1))]
        arr_check << first_half if arr_check.length <= safe_streak

    end

    safe_size.times do | index |
      second_half = arr[(size-1)+(safe_size*index)+((size)*count)]
      arr_check2 << second_half if count > 0 && second_half
    end
    
      p arr_check
      p arr_check2
      arr_check = []
      arr_check2 = []  

      safe_streak += 1
  end

end

array2 = [  0, 1, 2, 3,
            4, 5, 6, 7,
            8, 9,10,11,
           12,13,14,15 ]

array3 = [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 
           9,10,11,12,13,14,15,16,17,
          18,19,20,21,22,23,24,25,26,
          27,28,29,30,31,32,33,34,35,
          36,37,38,39,40,41,42,43,44,
          45,46,47,48,49,50,51,52,53,
          54,55,56,57,58,59,60,61,62,
          63,64,65,66,67,68,69,70,71,
          72,73,74,75,76,77,78,79,80]

# game_size1 = Math.sqrt(array.length).to_i
game_size2 = Math.sqrt(array2.length).to_i
game_size3 = Math.sqrt(array3.length).to_i
game_streak1 = 3
game_streak2 = 4
player_symbol = 'X'

# check_top_left_to_right(array, game_size1, game_streak1, player_symbol ) 
# check_down_left_to_right(array2, game_size2, game_streak1, player_symbol ) 
# check_down_left_to_right(array3, game_size3, game_streak1, player_symbol ) 


# version #1
# def check_down_left_to_right(arr, size, streak, simbol )
#   arr_check = []
#   max_times = size - streak + 1 # compared with streaks
#   index = size - 1
#   max_times.times do |count|

#     arr.each_with_index do |element, index|
#       if index !=0 && index != arr.length-1
#         arr_check << element if (index) % (size-1) == 0 
#       end
#     end
#   p arr_check
#   arr_check = []

#   end
# end

# p (0..2).to_a