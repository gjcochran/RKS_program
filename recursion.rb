def sum_upto(n)
  return 1 if n == 1
  sum_upto(n - 1) + n
end

p sum_upto(5)

def append(ary, n)
  return ary if n < 0
  ary << n
  append(ary, n - 1)

end

p append [], 2
p append [], 3

def reverse_append(ary, n)
  return ary if n < 0
  ary.unshift n
  reverse_append(ary, n - 1)
end

p reverse_append [], -1
p reverse_append [], 0
p reverse_append [], 1
p reverse_append [], 2

def fib(n)
  return 0 if n == 0
  return 1 if n == 1
  fib(n - 2) + fib(n - 1) 
end

p fib(3)
p fib 10