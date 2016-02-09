# G Liu
# CS 270
# Assignment 2

#1 Basics:
print '>> Please enter your name: '
in_name=gets.chomp
puts "Hello #{in_name}, hope everything is going great for you today!"
puts ''

puts 'Start of program 1 - odd/even'
begin
  #2 Selection:
  print '>> Please enter an integer (press q to quit): '
  in_cmd=gets.chomp
  in_num=in_cmd.to_i
  if in_cmd != 'q'
    if in_num % 2 == 0
      puts "Ahha. #{in_num} is an even number!"
    else
      puts "Ahha. #{in_num} is an odd number!"
    end
    puts ''
  end

#3 Repetition:
end while in_cmd != 'q'
puts 'End of program 1'
puts ''

#4 Arrays
puts 'Start of program 2 - sum'
print '>> Please enter an integer: '
in_num=gets.to_i
a=[]
for i in 1..in_num
  a << i
end
#puts "#{a}"
sum = 0
for i in a
  sum += i
end
puts "If I add from 1 to #{in_num}, I get a sum of #{sum}"
puts ''
puts 'End of program 2'
puts ''

#5 Hash
puts 'Start of program 3 - age'
print '>> Please enter your name again. I am suffering from short term memory loss <sad>: '
in_name=gets.chomp
print '>> Now please enter your age:'
in_age=gets.to_i
h={in_name=>in_age}
#puts "#{h}"
h.each { |in_name, in_age| puts "Hello #{in_name}. I see that you are #{in_age} years old."}
puts ''
puts 'End of program 3'
puts ''

#6 Functions
def sumarrayitems(arrayname)
  sum = 0
  for i in arrayname
    sum += i
  end
  return sum
end

puts 'Start of program 4'
print '>> Please enter an integer: '
in_num=gets.to_i
a=[]
for i in 1..in_num
  a << i
end
sumtotal=sumarrayitems(a)
puts "If I add from 1 to #{in_num}, I get a sum of #{sumtotal}"
puts ''
puts 'End of program 4'
puts ''
