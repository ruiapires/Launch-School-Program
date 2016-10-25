def prompt(message)
  puts "=> #{message}"
end

def valid_numbers(input, prompt)
  input = nil
  loop do
    input = gets.chomp
    if /^\d+$/.match(input) && input.to_i > 0
      break
    else
      prompt("Please use only numbers!")
    end
  end
  input
end

def valid_interest(input, prompt)
  input = nil
  loop do
    input = gets.chomp
    if input.to_f <= 0
      prompt("Please use only numbers bigger than 0!")
    elsif /^\w+^\$/.match(input)
      prompt("Please use only numbers!")
    elsif input.size > 4
      prompt("Please insert a valid interest rate!")
    else
      break
    end
  end
  input
end

name = ''
prompt("Welcome to the Car Loan Calculator! Enter your name please: ")
loop do
  name = gets.chomp.capitalize
  if name.empty?
    prompt("Please insert a name!")
  elsif name.size <= 1 || name.size > 10
    prompt("Please use 2 up to 10 characters for your name!")
  elsif /\d+/.match(name) || /\W+/.match(name)
    prompt("Your name can't have numbers or special characters!")
  else
    break
  end
end

loop do
  amount = valid_numbers(amount, prompt("What's the loan
    amount that you need? Please type a number - ex: 12500,
    not 12,500 or 12.500"))
  amount = amount.to_i

  annual_percentage_rate = valid_interest(annual_percentage_rate,
    prompt("What's the Annual Percentage Rate that you wish?
            Example: Input 5 for 5% rate"))
  annual_percentage_rate = annual_percentage_rate.to_f

  loan_duration = valid_numbers(loan_duration,
    prompt("How many years is the duration of the loan?
            Please type in years."))
  loan_duration = loan_duration.to_i

  monthly_interest = annual_percentage_rate / 100 / 12
  duration_in_months = loan_duration * 12

  monthly_payment = amount * (monthly_interest / (1 -
    (1 + monthly_interest)**-duration_in_months))

  prompt("#{name} your monthly payment is
    $#{format('%02.2f', monthly_payment)}")

  prompt("Would you like to calculate again?
    'Y' to continue or any other key to exit")
  answer = gets.chomp.downcase.to_s
  break unless answer == 'y'
end
