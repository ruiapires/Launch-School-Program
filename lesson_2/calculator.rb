require 'yaml'
require 'pry'

MESSAGES = YAML.load_file('calculator_messages.yml')

def prompt(message)
  puts("=> #{message}")
end

def integer?(input)
  input.to_i.to_s == input
end

def float?(input)
  input.to_f.to_s == input
end

def number?(input)
  integer?(input) || float?(input)
end

def validating(number)
  if integer?(number)
    number.to_i
  else
    number.to_f
  end
end

def operation_to_message(op)
  case op
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multipying'
  when '4'
    'Dividing'
  end
end

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

prompt("Hi #{name}")

loop do # Main loop
  number1 = ''
  loop do
    prompt(MESSAGES['number1'])
    number1 = gets.chomp

    if number?(number1)
      break
    else
      prompt(MESSAGES['valid_number'])
    end
  end

  number1 = validating(number1)

  number2 = ''
  loop do
    prompt(MESSAGES['number2'])
    number2 = gets.chomp

    if number?(number2)
      break
    else
      prompt(MESSAGES['valid_number'])
    end
  end

  number2 = validating(number2)

  operator_prompt = <<-MSG
    Choose an operation:
    1) add
    2) subtract
    3) multiply
    4) divide
  MSG

  prompt(operator_prompt)

  operator = ''
  loop do
    operator = gets.chomp

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(MESSAGES['operator'])
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers...")

  result = case operator
           when '1'
             number1 + number2
           when '2'
             number1 - number2
           when '3'
             number1 * number2
           when '4'
             number1 / number2
           end

  prompt("The result is #{result}")

  prompt(MESSAGES['continue'])
  answer = gets.chomp
  break unless answer.downcase().start_with?('y')
end

prompt(MESSAGES['finish'])
