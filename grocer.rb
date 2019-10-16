def consolidate_cart(cart)
  receipt_hash = {}
  cart.each do |element_hash|
  element_hash.each do |item, attribute_hash|
  receipt_hash[item] ||= attribute_hash
  receipt_hash[item][:count] ? receipt_hash[item][:count] +=1: 
  receipt_hash[item][:count] = 1 
end
receipt_hash
end 

def apply_coupons(cart, coupons)
  # code here
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
