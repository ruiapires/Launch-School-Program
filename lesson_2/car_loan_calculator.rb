require 'yaml'

MESSAGES = YAML.load_file('calculator_messages.yml')

def prompt(message)
  puts ">>>>>> #{message}"
end

name = ''
prompt(MESSAGES['welcome'])
loop do
  name = gets.chomp.capitalize
  if name.empty?
    prompt(MESSAGES['valid_name'])
  elsif name.size <= 1 || name.size > 10
    prompt(MESSAGES['limit_characters'])
  elsif /\d+/.match(name) || /\W+/.match(name)
    prompt(MESSAGES['special_characters'])
  else
    break
  end
end

loop do
  amount = nil
  prompt(MESSAGES['amount'])
  loop do
    amount = gets.chomp
    if /^\d+$/ =~ amount && amount.to_i > 0
      break
    else
      prompt(MESSAGES['valid_number'])
    end
  end

  interest_rate = nil
  prompt()
  loop do
    interest_rate = gets.chomp
    if interest_rate.to_f <= 0 || /^\w+\$/ =~ interest_rate
      prompt(MESSAGES['valid_number'])
    elsif interest_rate.size > 4
      prompt(MESSAGES['valid_interest'])
    else
      break
    end
  end

  years = nil
  prompt(MESSAGES['years'])
  loop do
    years = gets.chomp
    if /^\d+$/ =~ years && years.to_i > 0
      break
    else
      prompt(MESSAGES['valid_number'])
    end
  end

  monthly_interest = interest_rate.to_f / 100 / 12
  months = years.to_i * 12

  monthly_payment = amount.to_f * (monthly_interest / (1 -
    (1 + monthly_interest)**-months))

  prompt("#{name} #{MESSAGES['payment']}#{format('%02.2f', monthly_payment)}")
  prompt(MESSAGES['continue'])
  answer = gets.chomp.downcase.to_s
  break unless answer == 'y'
end

prompt(MESSAGES['finish'])
