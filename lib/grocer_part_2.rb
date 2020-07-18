require_relative './part_1_solution.rb'

def apply_coupons(cart, coupons)
 new_cart = []
 coupons.each do |coupon|
   cart.each do |cart_item|
     if coupon[:item] == cart_item[:item]
       if cart_item[:count] > coupon[:count]
         new_item = cart_item
         new_item[:count] = cart_item[:count] - coupon_item[:count]
         new_coupon_item = {
           :item => "#{coupon[:item]} W/COUPON",
           :price => coupon[:price] / coupon[:count],
           :clearance => cart_item[:clearance],
           :count => coupon[:count]
         }
         new_item << new_cart
         new_coupon_item << new_cart 
       end
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
