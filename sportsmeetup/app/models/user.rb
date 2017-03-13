class User < ActiveRecord::Base
<<<<<<< HEAD
    
    geocoded_by :address
    after_validation :geocode
    has_one :profile
    before_create :build_profile #creates profile at user registration
    
=======
    has_many :signedups
    has_many :games, :through => :appointments
>>>>>>> 2c70b5a91e9f89c6c3d9bc5b243cb08d4f49eaff
end
