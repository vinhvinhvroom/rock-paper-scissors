

puts "Choose rock (r), paper (p), or scissors(s)!"

user = gets.chomp
#USER IF STATEMENTS
if user == "r"
  puts "You chose Rock."
elsif user == "p"
  puts "You chose Paper."
elsif user == "s"
  puts "You chose Scissors."
else
  puts "Please try again and choose rock(r), paper(p), or scissors(s)"
end

if user == "r" || user == "p" || user == "s"
  computer = rand(3)
#RANDOM NUMBER TO STRING and COMPUTER CHOICE
  if computer == 0
    computer_string = "r"
    puts "Computer chose Rock"
  elsif computer == 1
    computer_string = "p"
    puts "Computer chose Paper"
  else
    computer_string = "s"
    puts "Computer chose Scissors"
  end
end

#TIE
if computer_string == user
  puts "Tie!"
#USER LOSES
elsif computer_string == "r" && user == "s"
  puts "Rock beats Scissors. You lose!"
elsif computer_string == "p" && user == "r"
  puts "Paper wraps Rock. You lose!"
elsif computer_string == "s" && user == "p"
  puts "Scissors cuts Paper. You lose!"
#USER WINS
elsif user == "r" && computer_string == "s"
  puts "Rock beats Scissors. You win!"
elsif user == "p" && computer_string == "r"
  puts "Paper wraps Rock. You win!"
elsif user == "s" && computer_string == "p"
  puts "Scissors cuts Paper. You win!"
end
