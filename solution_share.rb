require './dbc_data'

puts "\nWelcome to Soution Share!\n\n"
puts "Week number:"
print ">"
@week_number = gets.chomp.to_i

puts "\nChallenge number:"
print ">"
@challenge_num = gets.chomp.to_i

puts "\n1. Desert Rabbits\n2. Eastern Moose"
puts "\nChoose Cohort number:"
print ">"
cohort_num = gets.chomp.to_i
@cohort = @cohort_dir[cohort_num-1]

puts # empty line
puts @cohort.sort_by.map{|k,v| v[0]} # prints sorted keys
puts "\nStudent last name:"
print ">"
@student = gets.chomp.downcase.to_sym

check_name
@final_url = "http://github.com/#{@cohort[@student][1]}#{@all_weeks[@week_number-1][@challenge_num-1]}"
open_link

