def consolidate_cart(cart)
  receipt_hash = {}
  cart.each do |element_hash|
    element_hash.each do |item, attribute_hash|
      receipt_hash[item] ||= attribute_hash
      receipt_hash[item][:count] ? receipt_hash[item][:count] +=1 : 
      receipt_hash[item][:count] = 1 
end
end 
receipt_hash
end 

def apply_coupons(cart, coupons)
  coupons.each do |coupon|
    item = coupon [item]
    if cart[item]
      if cart[item][:count] >= coupon[:num] && !cart["#{item} W/COUPON"]
        cart["#{item} W/COUPON"] = {price: coupon [:cost]/coupon[:num], clearance: cart[item][:clearance], count: coupon[:num]
        cart[item][:count] -= coupon[:num]
      elsif cart[item][:count] >= coupon[:num] && cart["#{item} W/COUPON"]
          cart["#{item} W/COUPON"][:count] += coupon[:num]
          cart[item][:count] -+ coupon[:num]
        end
      end
end
cart
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
