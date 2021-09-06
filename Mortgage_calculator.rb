# Create a loan calculator
# loan amount, APR, and loan duration
# Calculate the monthly interest rate, loan duration in months, monthly payment


def prompt(message)
  puts ("=> #{message}")
end

def not_zero(num)
  num.to_i !=0
end 


prompt ("Hello! Are you ready to see what your monthly payments are?")


loan_amount = ''

loop do 
  prompt ("What is the loan amount?")
  loan_amount = gets.chomp.to_i

  if not_zero(loan_amount)
    break
  else 
    prompt ("That is not a valid number")
  end 
end 

apr =''

loop do 
  prompt ("What is your APR? and please use whole numbers.")
  apr = gets.chomp.to_i
  if not_zero (apr)
    break
  else 
    prompt ("We need a valid number here.")
  end 
end 

loan_duration = ''

loop do 
  prompt ("Lastly we need how long you are going to be paying this loan for! Please round to nearest year.")
  loan_duration = gets.chomp.to_i 
  if not_zero (loan_duration)
    break
  else 
    prompt ("We need a valid year here.")
  end 
end 

prompt ("This is how many months you be paying")

loan_duration_months = (loan_duration * 12)

prompt (loan_duration_months)

prompt ("This is the APR for each month")
apr_month = (apr / loan_duration_months) * 100.000000

prompt (apr_month)

prompt ("Here is what you will be paying monthly")

monthly_payments = loan_amount * (apr_month / (1 - (1 + apr_month) ** (-loan_duration_months)))

prompt (monthly_payments)

prompt ("Thank you for using my calculator")

