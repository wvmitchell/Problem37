load "helpers.rb"

puts "Greetings, this simple program will find the only 11 primes which can be truncated from left to right and right to left, and remain prime throughout"

puts "Note: The primes 2, 3, 5, and 7 are not considered to be truncatable"

puts "Printing in"
i = 5
5.times {
  sleep 0.5
  puts i
  i -= 1
}
puts "\n"
count = 0

test = 11
sum = 0
while true
  if can_truncate_LTR(test) && can_truncate_RTL(test)
    count += 1
    puts test
    sum += test
  end
  break if count == 11
  test += 1
end

puts "\nThe sum of the only 11 primes which can be truncated both LTR and RTL is #{sum}. Adios!"