def find_item_by_name_in_collection(name, collection)
  i = 0 
  
  while i < collection.length do 
    if name == collection[i][:item]
      return collection[i]
    end
    i += 1 
  end
  # Implement me first!
  #
  # Consult README for inputs and outputs
end

def consolidate_cart(cart)
  nu_cart = []
  i = 0 
  
  while i < cart.length do
    new_item = find_item_by_name_in_collection(cart[i][:item], nu_cart)
    if new_item != nil 
      new_item[:count] += 1 
    else new_item = {
        :item => cart[i][:item],
        :price => cart[i][:price],
        :clearance => cart[i][:clearance],
        :count => 1 
      }
      nu_cart << new_item
    end
    i += 1 
  end
  nu_cart


  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
end

def apply_coupons(cart, coupons)
  i = 0 
  
  while i <coupons.count do
    item_name = find_item_by_name_in_collection(coupons[i][:item], cart)
    coupon_name = "#{item_name} "
    
  
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
