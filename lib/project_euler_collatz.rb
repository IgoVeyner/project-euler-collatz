def even_next(n)
  n / 2
end

def odd_next(n)
  3 * n + 1
end

def next_value(n)
  n.even? ? even_next(n) : odd_next(n)
end

def collatz(n)
  arr = []

  while n != 1
    arr << n 
    n = next_value(n)
  end

  arr << n

  arr
end

def longest_collatz
  length = 0
  value = 0

  (500000...1000000).each do |i|
    current_length = collatz(i).length
    if current_length > length  
      length = current_length
      value = i
    end
  end

  value
end