def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, amount) 
  if amount.is_a? Integer
    pet_shop[:admin][:total_cash]  += amount
  else
    return nil
  end
end

def pets_sold(pet_shop)
  pets_sold_by_shop = pet_shop[:admin][:pets_sold]
  return (pets_sold_by_shop < 0) ? nil : pets_sold_by_shop
end

def increase_pets_sold(pet_shop, number_of_pets)
  pet_shop[:admin][:pets_sold] += number_of_pets
  return nil
end

def stock_count(pet_shop)
  return pet_shop[:pets].length()
end

def pets_by_breed(pet_shop, breed)
  all_pets = pet_shop[:pets]
  same_breed = all_pets.keep_if { |pet| pet[:breed] == breed }
  return same_breed ? same_breed : nil
end

def find_pet_by_name(pet_shop, name)
  all_pets = pet_shop[:pets]
  all_pets.each { |pet| return pet if pet[:name] ==  name }
  #return nil if no ped with "name" is found
  return nil
end

def remove_pet_by_name(pet_shop, name)
  all_pets = pet_shop[:pets]
  all_pets.delete_if { |pet| pet[:name] == name }
  return nil
end

def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets].push(new_pet)
  return nil
end

def customer_pet_count(customer)
  return customer[:pets].count() 
end

def add_pet_to_customer(customer, new_pet)
  customer[:pets].push(new_pet)
  return nil
end

def customer_can_afford_pet(customer, new_pet)
  return customer[:cash] < new_pet[:price] ? false : true
end

def sell_pet_to_customer(pet_shop, pet, customer)
  pet_is_in_the_shop = pet_shop[:pets].include?(pet)

  if pet_is_in_the_shop && customer_can_afford_pet(customer, pet)
    add_pet_to_customer(customer, pet)
    increase_pets_sold(pet_shop, 1)
    add_or_remove_cash(pet_shop, 900)
  end
  return nil
end









































