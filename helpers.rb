def prime?(number)
  # No number has a factor larger than it's sqare root, this optimizes the functi$
  ceiling_root = Math.sqrt(number).ceil

  # Two is a prime, but will also satisfy 2%2 == 0, this special case must be con$
  if number == 2
    return true
  end
  
  # One is not a prime
  if number == 1
    return false
  end

  # To check if a number is prime, use modulo division on the number and all the $
  # If the answer is ever 0, the number is not prime
  divisor = 2
  while divisor <= ceiling_root
    if number % divisor == 0
      return false
    end
    divisor += 1
  end

  #If we reach this part of the the algorithm, we have a prime number
  return true
end

def can_truncate_LTR(num)
  if prime?(num) # if num is not prime, go no further
    if num.to_s.length == 1 # if algorithm has reached this point, it can be truncated LTR and remain prime
      return true 
    else
      length = num.to_s.length
      return can_truncate_LTR(num.to_s[1...length].to_i) # recursive step
    end
  else
    return false
  end
end

def can_truncate_RTL(num)
  if prime?(num) # if num is not prime, go no further
    if num.to_s.length == 1 # if algorithm has reached this point, it can be truncated RTL and remain prime
      return true
    else
      length = num.to_s.length
      return can_truncate_RTL(num.to_s[0...length-1].to_i) # recursive step
    end
  else
    return false
  end
end