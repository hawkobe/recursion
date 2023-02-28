def fibs(n)
  fib_arr = []
  first_operand = 0
  second_operand = 1
  fib = 0

  for i in (0..(n-1))
    fib_arr << fib
    first_operand = second_operand
    second_operand = fib
    fib = first_operand + second_operand
  end

  fib_arr
end

def fibs_rec(n, arr=[0,1])
  return [0,1].first(n) if n <= 1
  return arr if arr.length == n
  arr.push(arr[-1] + arr[-2])
  fibs_rec(n, arr)
end

def merge_sort(arr)
  if arr.length < 2
    arr
  else
    a = merge_sort(arr.slice(0, arr.length/2))
    b = merge_sort(arr.slice(arr.length/2, arr.length))
    merge(a, b)
  end
end

def merge(a, b, orig = [])
  for length in (1..a.length + b.length)
    if a.empty?
      orig << b.shift
    elsif b.empty?
      orig << a.shift
    else
      a[0] < b[0] ? orig << a.shift : orig << b.shift
    end
  end
  orig
end





