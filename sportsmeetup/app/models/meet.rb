class Meet < ActiveRecord::Base
    
    #Preserved, no idea if "User" class was a typo so cloned that to user.rb - J
    geocoded_by :address
    after_validation :geocode
    
end
