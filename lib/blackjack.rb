require "pry"

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  sum = (deal_card + deal_card)
  display_card_total(sum)
  sum
end

def hit?(hand_total)
  prompt_user
  action = get_user_input
  if action != "s" && action != "h"
    invalid_command
    prompt_user
    action = get_user_input
  end
  if action == "s"
    return hand_total
  end
  if action == "h"
    hand_total += deal_card
    return hand_total
  end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  init = initial_round

  while hand < 22 do
    display_card_total(hand)
    hand += hit?(init)
    #binding.pry
  end
  
  end_game(hand)
end
    
