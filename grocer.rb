require "pry"
cart = [
  {"AVOCADO" => {:price => 3.0, :clearance => true }},
  {"AVOCADO" => {:price => 3.0, :clearance => true }},
  {"KALE"    => {:price => 3.0, :clearance => false}}
]

item = {:item => "AVOCADO", :num => 2, :cost => 5.0}



def consolidate_cart(cart)
  new_hash = {}
  count = :count
  cart.each do |array|
    array.each do |products, specs|

        if new_hash.has_key?(products) == false
          new_hash[products] = specs
          new_hash[products][count] = 1 
        else
          new_hash[products][count] += 1    
        end
      end
    end
    new_hash
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
