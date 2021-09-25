
# check_rows

# arr = [ 'a', 'b','c','d','X','X','X']
# arr_streak = 3
# arr_length = arr.length
# p arr_length
# n_times =  arr_length - (arr_streak -1)

# count = 0
# simbol = 'X'
# until count == n_times

#     # p arr[count...arr_streak+count]
#     p arr[count...arr_streak+count].all?{|x| x == simbol}


#   count += 1
# end

# check_collumns

arr = [ 'y','X',2,'X',
        'X',5,6,'X',
        'X',9,10,'X',
        'X',13,14,'X' ]
# array2 = [ 1,2,3,4,'X','X','2',8,9,10,11,12,13,14,15,16]
# array3 = [ 1,2,3,4,5,6,'X','X','X']


size = Math.sqrt(arr.length).to_i
streak = 3
name = 'juan'
simbol = 'X'

# p arr[0]
# p arr[4]
# p arr[8]
# p arr[12]
eval_arr = []
count = 0
n_times =  size - (streak -1)
won = false


while count < size
  arr.each_with_index do |element, index|

    if (index+count) % size == 0  
      eval_arr << element
      
    end

  end

  n_times.times do |count|
        
    won = eval_arr[count...streak+count].all?{|x| x == simbol} 
    
    return won if won
  end

  eval_arr.shift(size) 
  count += 1
  won

end

