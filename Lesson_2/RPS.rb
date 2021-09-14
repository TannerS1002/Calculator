
VALID_CHOICES = ['rock', 'paper', 'scissors', 'lizard', 'spock']



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



  # scissors cuts paper
  # paper covers rock
  # rock crushes Lizard
  # lizard poisons spock
  # spock smashes Scissors
  # scissors decapitates lizard
  # lizard eats paper
  # paper disproves spock
  # spock vaporizes rock 
  # rock crushes scissors 


  computer_choice = VALID_CHOICES.sample

  choice_score = 0
  computer_score = 0
  until choice_score = 3 || computer_score == 3 
    loop do 
      if (choice == 'rock' && computer_choice == 'scissors')||
        (choice == 'paper' && computer_choice == 'rock')||
        (choice == 'scissors' && computer_choice == 'paper') ||
        (choice == 'spock' && computer_choice == 'rock') ||
        (choice == 'spock' && computer_choice == 'scissors')||
        (choice == 'lizard' && computer_choice == 'spock') ||
        (choice == 'lizard' && computer_choice == 'paper') ||
        (choice == 'rock' && computer_choice == 'lizard') ||
        (choice == 'paper' && computer_choice == 'spock')
        prompt ("YOU WON")
        choice_score = choice_score + 1
      elsif (choice == 'rock' && computer_choice == 'paper')||
        (choice == 'paper' && computer_choice == 'scissors')||
        (choice == 'scissors' && computer_choice == 'rock') ||
        (choice == 'rock' && computer_choice == 'spock') ||
        (choice == 'scissors' && computer_choice == 'spock')||
        (choice == 'spock' && computer_choice == 'lizard') ||
        (choice == 'paper' && computer_choice == 'lizard') ||
        (choice == 'lizard' && computer_choice == 'rock') ||
        (choice == 'spock' && computer_choice == 'paper')
        prompt ("Computer WON")
        computer_score = computer_score + 1
      else 
        prompt ("its a tie")
      end 

      prompt ("you chose #{choice}, and computer chose #{computer_choice}")

    end
  end



  prompt ("Do you want to play again?")
  answer = gets.chomp

  break unless answer.downcase.start_with?('y')
  
end

prompt ("thank you for playing!")
