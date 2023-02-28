# frozen_string_literal: true

def fibs(num)
  fib_arr = []
  first_operand = 0
  second_operand = 1
  fib = 0

  (0..(num - 1)).each do |_i|
    fib_arr << fib
    first_operand = second_operand
    second_operand = fib
    fib = first_operand + second_operand
  end
  fib_arr
end

def fibs_rec(num, arr = [0, 1])
  return [0, 1].first(num) if num <= 1
  return arr if arr.length == num

  arr.push(arr[-1] + arr[-2])
  fibs_rec(num, arr)
end
