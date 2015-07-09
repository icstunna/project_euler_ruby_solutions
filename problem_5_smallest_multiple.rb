#2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

#What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

#ANSWER == 232,792,560

require "Prime"

range = *(1..20)

def highest_frequency_divisors(range_array)
  highest_frequency_divisors_hash = Hash.new(0)
  array_of_divisors = prime_divisors(range_array)
  array_of_divisors.each do |divisor_hash|
    max_frequency = 0
    divisor_hash.each do |prime, frequency|
      if highest_frequency_divisors_hash[prime] == 0
        highest_frequency_divisors_hash[prime] = frequency
      elsif highest_frequency_divisors_hash[prime] < frequency
        highest_frequency_divisors_hash[prime] = frequency
      end
    end
  end
  return highest_frequency_divisors_hash
end

def prime_divisors(range_array)
  divisors_array = []
  range_array.each do |integer|
    divisor_frequency_hash = integer_divisors(integer, 1)
    divisors_array << divisor_frequency_hash
  end
  return divisors_array
end

def integer_divisors(int, divisor, hash = Hash.new(0))
  divisor_frequency = hash
  if int == 1
    return divisor_frequency
  elsif divisor == 1
    divisor_frequency[divisor] += 1
    divisor = next_prime(divisor)
    return integer_divisors(int, divisor, divisor_frequency)
  elsif int % divisor != 0
    divisor = next_prime(divisor)
    return integer_divisors(int, divisor, divisor_frequency)
  else
    int = int / divisor
    divisor_frequency[divisor] += 1
    return integer_divisors(int, divisor, divisor_frequency)
  end
end

def next_prime(divisor)
  divisor = divisor + 1
  if divisor.prime?
    return divisor
  else
    next_prime(divisor)
  end
end

# p prime_divisors(range)
# p integer_divisors(2, 1)
p highest_frequency_divisors(range)