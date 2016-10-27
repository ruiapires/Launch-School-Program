VALID_CHOICES = %w(rock paper scissors spock lizard)

def prompt(message)
  puts ">>>>>> #{message}"
end

def transform(input, one_letter)
  if input == 'r'
    one_letter << VALID_CHOICES[0]
  elsif input == 'p'
    one_letter << VALID_CHOICES[1]
  elsif input == 's'
    one_letter << VALID_CHOICES[2]
  elsif input == 'v'
    one_letter << VALID_CHOICES[3]
  elsif input == 'l'
    one_letter << VALID_CHOICES[4]
  end
end

def rock(win, lose)
  (win == 'rock' && lose == 'scissors' ||
    win == 'rock' && lose == 'lizard')
end

def paper(win, lose)
  (win == 'paper' && lose == 'rock' ||
    win == 'paper' && lose == 'spock')
end

def scissors(win, lose)
  (win == 'scissors' && lose == 'paper' ||
    win == 'scissors' && lose == 'lizard')
end

def spock(win, lose)
  (win == 'spock' && lose == 'scissors' ||
    win == 'spock' && lose == 'rock')
end

def lizard(win, lose)
  (win == 'lizard' && lose == 'spock' ||
    win == 'lizard' && lose == 'paper')
end

def win?(first, second)
  (rock(first, second) || paper(first, second) ||
    scissors(first, second) || spock(first, second) ||
    lizard(first, second))
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif   win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

loop do
  choice = ''
  single_letter = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = gets.chomp.downcase.to_s

    if transform(choice, single_letter)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You chose: #{single_letter}; Computer chose: #{computer_choice}")

  display_results(single_letter, computer_choice)

  prompt("Do you want to play again? 'Y' to continue or any key to exit")
  answer = gets.chomp
  break unless answer.casecmp('y').zero?
end

prompt("Thank you for playing. Good Bye!")
