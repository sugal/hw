N = ["Times Square", "34th", "28th", "23rd", "Union Square", "8th"]
L =[ "8th", "6th", "Union Square", "3th", "1st"]
six_line = ["Grand Central", "33th", "28th", "23rd", "Union Square", "Astor Place"]

subway = {:N => N, :L => L, :Six => six_line}

union_station = "Union Square"

puts "Enter the line user gets_on"
line_gets_on = gets.chomp

puts "Enter the stop user gets_on"
stop_gets_on = gets.chomp

puts "Enter the line user gets_off"
line_gets_off = gets.chomp

puts "Enter the stop user gets_off"
stop_gets_off=gets.chomp

if line_gets_on == line_gets_off
	
	num_stops = ( subway[line_gets_on.to_sym].index(stop_gets_on) - subway[line_gets_off.to_sym].index(stop_gets_off) ).abs
else
	num_stops = ( subway[line_gets_on.to_sym].index(stop_gets_on) - subway[line_gets_on.to_sym].index(union_station) ).abs
	num_stops += ( subway[line_gets_off.to_sym].index(union_station) - subway[line_gets_off.to_sym].index(stop_gets_off) ).abs
end

puts "Number of stops is #{num_stops}"

