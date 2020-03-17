class User < ApplicationRecord
   geocoded_by :whole_address
   after_validation :geocode
  
  
  def whole_address
    "#{address}"+ " " + "#{city}"
  end
end
