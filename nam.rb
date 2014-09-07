require 'csv'

student = CSV.read('data.csv', {:converters => :numeric, :headers => true, :header_converters => :symbol})

max_score = student[:score].max
min_score = student[:score].min
avg_score = student[:score].inject(:+) / student[:score].size
max_student = nil
min_student = nil
color_freq = Hash.new(0)

student.each do |s|
	s[:name] = s[:name].reverse.split.map(&:capitalize).join(' ').reverse
	max_student = s[:name] if s[:score]==max_score
	min_student = s[:name] if s[:score]==min_score
end

student[:color].each do |color|
	color_freq[color] += 1
end
most_color = student[:color].max_by { |v| color_freq[v] }
least_color = student[:color].min_by { |v| color_freq[v] }

puts "Highest score: #{max_student} - #{max_score}"
puts "Lowest score: #{min_student} - #{min_score}"
puts "Average score: #{avg_score}"
puts "Most popular color: #{most_color}"
puts "Least popular color: #{least_color}"