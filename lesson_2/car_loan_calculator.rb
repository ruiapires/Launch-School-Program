require 'yaml'

MESSAGES = YAML.load_file('car_loan_calculator.yml')

def prompt(message)
  puts "=> #{message}"
end

def integer?(input)
  input.to_i.to_s == input
end

def float?(input)
  input.to_f.to_s == input
end

def valid_number?(input)
  integer?(input) || float?(input)
end

def to_i_or_to_f?(number)
  if integer?(number)
    number.to_i
  else
    number.to_f
  end
end

# Welcome to the calculator and ask for a valid name
prompt(MESSAGES['welcome'])

name = ''
loop do
  name = gets.chomp

  if name.empty?
    prompt(MESSAGES['valid_name'])
  else
    break
  end
end

# ask for:
# the loan amount
loop do # Main Loop
  amount = ''
  loop do
    prompt("#{MESSAGES['amount']} #{name}?")
    amount = gets.chomp

    if valid_number?(amount)
      break
    else
      prompt(MESSAGES['valid_number'])
    end
  end

  amount = to_i_or_to_f?(amount)

  # the Annual Percentage Rate
  rate = ''
  loop do
    prompt(MESSAGES['rate'])
    rate = gets.chomp.to_f

    if rate > 1
      break
    else
      prompt(MESSAGES['valid_number'])
    end
  end

  rate = to_i_or_to_f?(rate)

  # the loan duration
  duration = ''
  loop do
    prompt(MESSAGES['duration'])
    duration = gets.chomp

    if valid_number?(duration)
      break
    else
      prompt(MESSAGES['valid_number'])
    end
  end

  duration = to_i_or_to_f?(duration)

  # Calculate:
  # monthly interest rate
  # loan duration in months

  monthly_interest = (rate * 0.010) / 12
  loan_duration = duration * 12
  without_interest = amount / loan_duration

  result = amount * (monthly_interest /
    (1 - (1 + monthly_interest)** -loan_duration))

  interests = result - without_interest
  total = result * loan_duration

  prompt("#{MESSAGES['result']} #{result.round(2)}")
  prompt("#{MESSAGES['result2']} #{without_interest}
    #{MESSAGES['result3']} #{interests.round(2)}.
    #{MESSAGES['result4']} #{total.round(2)}")

  prompt(MESSAGES['continue'])
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("#{MESSAGES['finish']} #{name}!")
