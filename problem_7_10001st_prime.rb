#By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

#What is the 10 001st prime number?
require "Prime"

def next_prime(int)
  int = int + 1
  if int.prime?
    return int
  else
    return next_prime(int)
  end
end

def nth_prime(int, n, count = 0)
  int = next_prime(int)
  count = count
  if count == n
    return int
  else
    count += 1
    nth_prime(int, n, count)
  end
end

# p next_prime(1000)
p nth_prime(1, 8151)