condition = true

while (condition) do
  puts "Please choose rock (r), paper (p), or scissors(s)."
  user = gets.chomp
  if user == "r"
    puts "You chose Rock"
    condition = false
  elsif user == "p"
    puts "You chose Paper"
    condition = false
  elsif user == "s"
    puts "You chose Scissors"
    condition = false
  end
end

if user == "r" || user == "p" || user == "s"
  computer = rand(3)
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

lose = " You lose!"
win = " You win!"
rock_wins = "Rock beats Scissors."
paper_wins = "Paper wraps Rock."
scissors_wins = "Scissors cuts Paper."

if computer_string == user
  puts "TIE"
elsif computer_string == "r" && user == "s"
  puts rock_wins + lose
elsif computer_string == "p" && user == "r"
  puts paper_wins + lose
elsif computer_string == "s" && user == "p"
  puts scissors_wins + lose
elsif user == "r" && computer_string == "s"
  puts rock_wins + win
elsif user == "p" && computer_string == "r"
  puts paper_wins + win
elsif user == "s" && computer_string == "p"
  puts scissors_wins + win
end
