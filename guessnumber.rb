random_num = rand(1000)
max = 1000
puts random_num
while true 
  puts "Guess a number between 0 and 1000."
  answer = gets.chomp
  if answer.empty? && answer.match(/[A-Za-z]/)
    puts "Please enter a valid number"
  else
    answer = answer.to_i
    if answer > random_num && answer > max
      puts "That is not within the range"
    elsif  answer > random_num
       puts "Too high, guess again"
    elsif answer < random_num
       puts "Too low, guess again"
    else
      puts "You are correct! The answer is #{random_num}"
      abort
    end
  end
end

