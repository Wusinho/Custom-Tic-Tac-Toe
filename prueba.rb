
# checking = Analize.new

##### check_rows #####

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

##### check_collumns #####

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

##### check check_top_left_to_right #####

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
#           'X',55,56,57,58,59,60,61,62,
#           63,'X',65,66,67,68,69,70,71,
#           72,73,'X',75,76,77,78,79,80]

# # game_size1 = Math.sqrt(array.length).to_i
# game_size2 = Math.sqrt(array2.length).to_i
# game_size3 = Math.sqrt(array3.length).to_i
# game_streak1 = 3
# game_streak2 = 4
# player_symbol = 'X'

# # check_top_left_to_right(array, game_size1, game_streak1, player_symbol ) 
# p checking.check_top_left_to_right(array2, game_size2, game_streak1, player_symbol ) 
# p checking.check_top_left_to_right(array3, game_size3, game_streak1, player_symbol ) 


##### check_top_left_to_right #####

# array2 = [  0, 1, 2, 3,
#             4, 5, 6, 7,
#             8, 9,10,11,
#            12,13,14,15 ]

# array2 = [  0, 1, 2, 3,
#             4, 5, 6, 'X',
#             8, 9,'X',11,
#            12,'X',14,15 ]

# array3 = [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 
#            9,10,11,12,13,14,15,16,17,
#           18,19,20,21,22,23,24,25,26,
#           27,28,29,30,31,32,33,34,35,
#           36,37,38,39,40,41,42,43,44,
#           45,46,47,48,49,50,51,52,53,
#           54,55,56,57,58,59,60,61,62,
#           63,64,65,66,67,68,69,70,71,
#           72,73,74,75,76,77,78,79,80]

# array3 = [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 
#            9,10,11,12,13,14,15,16,17,
#           18,19,20,21,22,23,24,25,26,
#           27,28,29,30,31,32,33,34,35,
#           36,37,38,39,40,41,42,43,44,
#           45,46,47,48,49,50,51,52,'X',
#           54,55,56,57,58,59,60,'X',62,
#           63,64,65,66,67,68,'X',70,71,
#           72,73,74,75,76,'X',78,79,80]

# game_size1 = Math.sqrt(array.length).to_i
# game_size2 = Math.sqrt(array2.length).to_i
# game_size3 = Math.sqrt(array3.length).to_i
# game_streak1 = 3
# game_streak2 = 4
# player_symbol = 'X'

# p checking.check_down_left_to_right(array2, game_size2, game_streak1, player_symbol ) 
# p checking.check_down_left_to_right(array3, game_size3, game_streak2, player_symbol ) 