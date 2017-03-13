class User < ActiveRecord::Base
    
    geocoded_by :address
    after_validation :geocode
    has_one :profile
    before_create :build_profile #creates profile at user registration
    
    has_many :signedups
    has_many :games, :through => :appointments
end
