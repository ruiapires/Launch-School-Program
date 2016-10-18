# ask for:
# the loan amount
# the Annual Percentage Rate
# the loan duration

puts "What's the loan amount that you need?"
amount = gets.chomp.to_i

puts "What's the Annual Percentage Rate that you wish?"
annual = gets.chomp.to_f
puts "How many years is the duration of the loan?"
duration = gets.chomp.to_i

# Calculate:
# monthly interest rate
# loan duration in months

monthly_interest = (annual * 0.010) / 12
loan_duration = duration * 12

# Formula:
# m = p * (j / (1 - (1 + j)**-n))
# m = monthly payment; p = loan amount; j = mounthly interest rate
# n = loan duration in months

monthly_payment = amount * (monthly_interest / (1 - (1 + monthly_interest)** -loan_duration))

puts monthly_payment.round(2)

# Hints:

# Figure out what format your inputs need to be in.
# For example, should the interest rate be expressed as 5 or .05,
# if you mean 5% interest?
# If you're working with Annual Percentage Rate (APR),
# you'll need to convert that to a monthly interest rate.
# Be careful about the loan duration -- are you working with
# months or years? Choose variable names carefully
# to assist in remembering.
