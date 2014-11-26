require './dbc_data'

puts "Week number:"
print ">"
week_number = gets.chomp.to_i

puts "Challenge number:"
print ">"
challenge_num = gets.chomp.to_i

puts # empty line
puts @desert_rabbits.sort.map{|k,v| "#{k.to_s.capitalize}"} # sorts and prints last names
puts "\nLast name of student:"
print ">"
student = gets.chomp.capitalize.to_sym

while !@desert_rabbits.include?(student) # loop until given a valid last name
  puts "\nError: Please enter correct last name:"
  print ">"
  student = gets.chomp.capitalize.to_sym
end

puts # empty line
puts "#{student.to_s}'s Week-#{week_number} Challenge-#{challenge_num} link:"
puts "http://github.com/#{@desert_rabbits[student]}#{@all_weeks[week_number-1][challenge_num-1]}"