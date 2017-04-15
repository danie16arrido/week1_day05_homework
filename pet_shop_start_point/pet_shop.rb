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