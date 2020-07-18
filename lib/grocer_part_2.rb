require_relative './part_1_solution.rb'

def apply_coupons(cart, coupons)
 new_cart = []
 coupons.each do |coupon|
   cart.each do |cart_item|
     if coupon[:item] == cart_item[:item]
         new_item = cart_item
         new_item[:count] = cart_item[:count] - coupon[:num]
         new_coupon_item = {
           :item => "#{coupon[:item]} W/COUPON",
           :price => coupon[:cost] / coupon[:num],
           :clearance => cart_item[:clearance],
           :count => coupon[:num]
         }
         new_cart << new_item
         new_cart << new_coupon_item  
     end
   end
 end
 cart.each do |hash|
   new_cart_item = find_item_by_name_in_collection(hash[:item], new_cart)
   if !new_cart_item
     new_cart << hash 
   end
 end
 new_cart
 end 
     
    

def apply_clearance(cart)
  cart.each do |hash|
    if hash[:clearance]
      hash_price = hash[:price] * 0.8
      hash[:price] = hash_price.round(3)
    end
  end 
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
