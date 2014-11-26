require './dbc_data'

puts "Week number:"
print ">"
week_number = gets.chomp.to_i

puts # empty line
puts "Challenge number:"
print ">"
challenge_num = gets.chomp.to_i

puts # empty line

puts "1. Desert Rabbits"
puts "2. Eastern Moose"
puts "Choose Cohort name(by number):"
print ">"
cohort_num = gets.chomp.to_i
case cohort_num
  when 1
    @cohort = @desert_rabbits
  when 2
    @cohort = @eastern_moose
  end




puts # empty line
puts @cohort.sort_by.map{|k,v| v[0]} # prints sorted keys
puts "\nStudent last name:"
print ">"
student = gets.chomp.downcase.to_sym

while !@cohort.include?(student) # loop until given a valid last name
  puts "\nError: Please enter correct last name:"
  print ">"
  student = gets.chomp.downcase.to_sym
end

puts # empty line
puts "#{@cohort[student][0]}'s Week-#{week_number} Challenge-#{challenge_num} link:"

final_url = "http://github.com/#{@cohort[student][1]}#{@all_weeks[week_number-1][challenge_num-1]}"
puts final_url
puts 'Would you like to visit them now?'

visit = gets.chomp[0].downcase
if visit == 'y'
    puts 'Opening in your browser'
    exec('open ' + final_url)
  end