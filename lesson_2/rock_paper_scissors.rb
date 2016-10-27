VALID_CHOICES = %w(rock paper scissors spock lizard)

def prompt(message)
  puts ">>>>>> #{message}"
end

def letter_s(input, var)
  if input == 's'
    var << VALID_CHOICES[2]
  elsif input == 'S'
    var << VALID_CHOICES[3]
  end
end

def other_letters(input, var)
  if input == 'r'
    var << VALID_CHOICES[0]
  elsif input == 'p'
    var << VALID_CHOICES[1]
  elsif input == 'l'
    var << VALID_CHOICES[4]
  end
end

def transform(input, one_letter)
  (letter_s(input, one_letter) ||
    other_letters(input, one_letter))
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
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

def final_result(player, computer)
  if player == 5
    prompt("Congratulations! You have won the game!")
  elsif computer == 5
    prompt("You lost the game! Better luck next time!")
  end
end

prompt("Welcome to #{VALID_CHOICES.join(', ')} game.")

loop do
  player_wins = 0
  computer_wins = 0
  loop do
    choice = ''
    single_letter = ''
    loop do
      prompt("Please choose:
      'r': rock, 'p': paper, 's': scissors,'S': spock, 'l': lizard")
      choice = gets.chomp

      if transform(choice, single_letter)
        break
      else
        prompt("That's not a valid choice.")
      end
    end

    computer_choice = VALID_CHOICES.sample

    prompt("You chose: #{single_letter}; Computer chose: #{computer_choice}")

    display_results(single_letter, computer_choice)

    player_wins += 1 if win?(single_letter, computer_choice)
    computer_wins += 1 if win?(computer_choice, single_letter)

    prompt("The result is: You #{player_wins} Computer #{computer_wins}")
    final_result(player_wins, computer_wins)
    break if player_wins == 5 || computer_wins == 5
  end
  prompt("Do you want to play again? 'Y' to continue or any key to exit")
  answer = gets.chomp
  break unless answer.casecmp('y').zero?
end

prompt("Thank you for playing. Good Bye!")
