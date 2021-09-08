
VALID_CHOICES = ['rock', 'paper', 'scissors']


def prompt (message)
  Kernel.puts("=> #{message}")
end 

loop do 
choice = ''
  loop do
    prompt ("Choose one: #{VALID_CHOICES}")
    choice = Kernel.gets.chomp

    if VALID_CHOICES.include?(choice)
      break
    else 
      prompt ("that is not a valid choice.")
    end 
  end 



  computer_choice = VALID_CHOICES.sample

  if (choice == 'rock' && computer_choice == 'scissors')||
    (choice == 'paper' && computer_choice == 'rock')||
    (choice == 'scissors' && computer_choice == 'paper')
    prompt ("YOU WON")
  elsif (choice == 'rock' && computer_choice == 'paper')||
    (choice == 'paper' && computer_choice == 'scissors')||
    (choice == 'scissors' && computer_choice == 'rock')
    prompt ("Computer WON")
  else 
    prompt ("its a tie")
  end

  prompt ("Do you want to play again?")
  answer = gets.chomp

  break unless answer.downcase.start_with?('y')
end

prompt ("thank you for playing!")
puts ("you chose: #{choice}: and the computer chose: #{computer_choice}")