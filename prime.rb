def primes_up_to(n)
  # Eratosthenes's sieve

  # Create an array of numbers from 2 to n
  array = (2..n).to_a

  # Iterate through array
  array.each do |divisor|
    # Delete all multiples of the current divisor
    array.delete_if do |number|
      # #delete_if will mutate the array
      # Skip number if it is smaller than itself
      # Do not let a prime number delete itself
      # because it is divisible by itself
      next if number <= divisor

      (number % divisor).zero?
    end
  end

  # Return array of prime numbers up to n
  array
end

def prime_function(n)
  primes = primes_up_to(n)
  return 1 if primes.include?(n)

  primes.each { |prime| return prime if (n % prime).zero? }
end
