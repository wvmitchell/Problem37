require "Prime"

def can_truncate_LTR(num)
  if Prime.prime?(num) # if num is not prime, go no further
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
  if Prime.prime?(num) # if num is not prime, go no further
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