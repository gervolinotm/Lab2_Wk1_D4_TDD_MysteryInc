def get_name(person)
  return person[:name]
end

def favourite_tv_show(person)
  return person[:favourites][:tv_show]
end

def likes_to_eat(person, snack_to_find)
  for snack in person[:favourites][:snacks]
    return true if snack == snack_to_find
  end
  return false
end

def add_friend(person, friend)
  person[:friends].push(friend)
end

def remove_friend(person, friend)
  person[:friends].delete(friend)
end

def total_monies(people)
  total_allowance = 0
  for person in people
    total_allowance += person[:monies]
  end
  return total_allowance
end


def friendly_loan_transaction(lender, lendee, money)
  lender[:monies] -= money
  lendee[:monies] += money
end
