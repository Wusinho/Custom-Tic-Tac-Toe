def print_table(table, margin_width = 2)
  # the margin_width is the spaces between columns (use at least 1)

  column_widths = []
  table.each do |row|
    row.each.with_index do |cell, column_num|
      column_widths[column_num] = [column_widths[column_num] || 0, cell.to_s.size].max
    end
  end

  puts (table.collect do |row|
    row.collect.with_index do |cell, column_num|
      cell.to_s.ljust(column_widths[column_num] + margin_width)
    end.join
  end)
end

my_table = [
  ["1", "Animal", "Dog", "1"],
  [1, "Animal", "Cat", "2"],
  [1, "Animal", "Bird", "3"],
  [2, "Place", "USA", "1"],
  [2.5, "Place", "Other", "2"],
  [3, "Color", "Red"],
  [3, "Color", "Blue", "b"],
  [3, "Some more color", "Orange", "c"],
  [4.7, "Age", "Young", "a"],
  [4, "Age", "Middle", "b"],
  [4, "Age", "Old", "c"],
  [5, "Alive"],
  [],
  [5, "Alive", false, "n"]
]

# p my_table

# print_table my_table

# p 1234.to_s.size

str ='------------------------------------------'
p str.size