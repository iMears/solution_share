require './dbc_data'

puts "Week number:"
print ">"
week_number = gets.chomp.to_i

puts # empty line
puts "Challenge number:"
print ">"
challenge_num = gets.chomp.to_i

puts # empty line
puts @desert_rabbits.sort_by.map{|k,v| v[0]} # prints sorted keys
puts "\nStudent last name:"
print ">"
student = gets.chomp.downcase.to_sym

while !@desert_rabbits.include?(student) # loop until given a valid last name
  puts "\nError: Please enter correct last name:"
  print ">"
  student = gets.chomp.downcase.to_sym
end

puts # empty line
puts "#{@desert_rabbits[student][0]}'s Week-#{week_number} Challenge-#{challenge_num} link:"
puts "http://github.com/#{@desert_rabbits[student][1]}#{@all_weeks[week_number-1][challenge_num-1]}"