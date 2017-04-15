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