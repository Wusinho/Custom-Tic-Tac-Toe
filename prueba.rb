def check_top_left_to_right(arr, size, streak, simbol ) 
  arr_check = []
  arr_check2 = []
  max_times = size - streak + 1 # compared with streaks
  max_times.times do |count|

    arr.length.times do |index|
      first_half = arr[count+((size+1)*index)]
      second_half = arr[(count*size)+((size+1)*index)]
      
      arr_check << first_half if arr_check.length < (size - count)
      arr_check2 << second_half if arr_check2.length < (size - count) && count > 0
    end

p arr_check2 if arr_check2.length > 0
p arr_check 

arr_check = []
arr_check2 = []

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
check_top_left_to_right(array2, game_size2, game_streak1, player_symbol ) 
check_top_left_to_right(array3, game_size3, game_streak1, player_symbol ) 



#version 2
# def check_top_left_to_right(arr, size, streak, simbol ) 
# arr_check=[]


#     arr.each_with_index do |element, index|
  
#       streak.times do |i|
#         # p i
#         # p size
#          arr_check << arr[index + (size+1)*i] if arr[index + (size+1)*i]


#       end
#       arr_check = [] if arr_check.length < streak
#     p arr_check
#       arr_check = []
   
#     end


# end

# check_top_right_to_left

# array = [ 'X',1, 2,
#            3,'X',5,
#            6, 7,'X' ]