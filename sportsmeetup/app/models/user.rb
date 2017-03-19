class User < ActiveRecord::Base
    
    geocoded_by :address
    after_validation :geocode
    has_one :profile
    before_create :build_profile #creates profile at user registration
    
    has_many :signedups
    has_many :back_out
    has_many :games, :through => :appointments
    
    before_save {|user| user.email=email.downcase }
    before_save :create_remember_token
    
end

private

def create_remember_token
    self.remember_token = SecureRandom.hex
end