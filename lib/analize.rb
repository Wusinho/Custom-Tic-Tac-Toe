# rubocop:disable Metrics/MethodLength
module Analize
  # method that evaluates arrays
  def eval_array(streak, arr, simbol)
    return if arr == []

    n_times = arr.length - (streak - 1)
    n_times.times do |count|
      element = arr[count...streak + count]
      return true if element.all? { |x| x == simbol }
    end
    false
  end

  def check_rows(arr, size, streak, simbol)
    eval_arr = []
    size.times do |index|
      eval_arr = arr[index * size...size * (index + 1)]

      return true if eval_array(streak, eval_arr, simbol)
    end
    false
  end

  def check_collumns(arr, size, streak, simbol)
    eval_arr = []

    size.times do |count|
      arr.each_with_index do |element, index|
        eval_arr << element if ((index + count) % size).zero?
      end

      return true if eval_array(streak, eval_arr, simbol)

      eval_arr = []
    end
    false
  end

  def check_top_left_to_right(arr, size, streak, simbol)
    eval_arr = []
    eval_arr2 = []
    max_times = size - streak + 1 # compared with streaks

    max_times.times do |count|
      arr.length.times do |index|
        first_half = arr[count + ((size + 1) * index)]
        second_half = arr[(count * size) + ((size + 1) * index)]

        eval_arr << first_half if eval_arr.length < (size - count)
        eval_arr2 << second_half if eval_arr2.length < (size - count) && count.positive?
      end

      return true if eval_array(streak, eval_arr, simbol)
      return true if eval_array(streak, eval_arr2, simbol)

      eval_arr = []
      eval_arr2 = []
    end
    false
  end

  def check_down_left_to_right(arr, size, streak, simbol)
    eval_arr = []
    eval_arr2 = []
    max_times = size - streak + 1 # compared with streaks
    safe_streak = streak # save streak, in case it iterates
    index_start = streak - 1
    safe_size = size - 1 # minu 1 because we don't need to repeat the biggest line in 2nd loop

    max_times.times do |count|
      safe_streak.times do |index|
        first_half = arr[(index_start + count) + (index * (size - 1))]
        eval_arr << first_half if eval_arr.length <= safe_streak
      end

      safe_size.times do |index|
        second_half = arr[(size - 1) + (safe_size * index) + (size * count)]
        eval_arr2 << second_half if count.positive? && second_half
      end

      return true if eval_array(streak, eval_arr, simbol)
      return true if eval_array(streak, eval_arr2, simbol)

      eval_arr = []
      eval_arr2 = []

      safe_streak += 1
    end
    false
  end
end

# rubocop:enable Metrics/MethodLength
