def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = rand(1..11)
end

def display_card_total(cards)
  puts "Your cards add up to #{cards}"
end

def prompt_user
 puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  users_input = gets.chomp
end

def end_game (card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card_one = deal_card
  card_two = deal_card
  sum = card_one + card_two
  display_card_total(sum)
  sum
end

def hit?(number)
  prompt_user
  players_input = get_user_input
  if players_input == 's'
    return number
  elsif players_input == 'h'
    new_card = deal_card 
    number+=new_card
    return number
  else
    invalid_command
    prompt_user
    return number
  end
  number
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = initial_round
  until card_total > 21
    card_total = hit?(card_total)
    display_card_total(card_total)
  end
  end_game(card_total)
end
    
