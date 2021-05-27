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
  longest = []

  (100000...1000000).each do |i|
    array = collatz(i)
    if array.length > longest.length  
      longest = array
    end
  end

  longest[0]
end