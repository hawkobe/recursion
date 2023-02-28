# frozen_string_literal: true

def merge_sort(arr)
  if arr.length < 2
    arr
  else
    a = merge_sort(arr.slice(0, arr.length / 2))
    b = merge_sort(arr.slice(arr.length / 2, arr.length))
    merge(a, b)
  end
end

def merge(a, b, orig = [])
  (1..a.length + b.length).each do |_length|
    orig << if a.empty?
              b.shift
            elsif b.empty?
              a.shift
            else
              (a[0] < b[0] ? a.shift : b.shift)
            end
  end
  orig
end

rand_array = Array.new(20) { rand(1..200) }

p rand_array

p merge_sort(rand_array)
