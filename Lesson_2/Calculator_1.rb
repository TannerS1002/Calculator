# ask the user for two numbers
# ask the user for an operation to perform
# perform the operation on the two numbers
# ouput the results

def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  num.to_i !=0 
end 

def operation_to_message(op)
  case op 
  when '1'
    'adding'
  when '2'
    'Subtracting'
  when '3'
    'multiplying'
  when '4'
    'dividing'
  end
end 

prompt("Welcome to the calculator! Enter your name:")

name = ''
loop do 
  name = Kernel.gets.chomp

  if name.empty?()
    prompt ("make sure you use a valid name")
  else 
    break
  end 
end 

loop do #main loop
  prompt ("hi #{name}")

  number1 =''
  loop do 
    prompt ("whats the first number?")
    number1 = Kernel.gets.chomp()
  if valid_number?(number1)
    break 
  else 
    prompt("Hmm.. that doesnt look like a valid number")
    end
  end

  number2 = ''
  loop do 
    prompt("What's the second number?")
    number2 = Kernel.gets.chomp()

  if valid_number?(number2)
    break
  else 
    prompt ("Hmm that doesnt look like a valid number")
    end 
  end 

  operator_prompt = <<-MSG
  What operation would you like to perform?
  1) add
  2) subtract
  3) multiply 
  4) divide
  MSG

  prompt(operator_prompt)


  operator = ''
  loop do
   operator = Kernel.gets.chomp()

   if %w(1 2 3 4).include?(operator)
    break
   else
    prompt ("must choose 1, 2, 3, or 4")
   end
  end

  prompt (" #{operation_to_message (operator)} the two numbers...")



  result = case operator 
  when '1'
    number1.to_i() + number2.to_i() 
  when '2'
    number1.to_i() - number2.to_i() 
  when '3'
    number1.to_i() * number2.to_i() 
  when '4'
    number1.to_i() / number2.to_i()
  end   

  prompt("The result is #{result}")
  
  prompt("do you want to perform another calculation? (Y to calculate again)")
  answer = Kernel.gets.chomp
  break unless answer.downcase().start_with?('y')
end

prompt ("thank you for using my calculator")