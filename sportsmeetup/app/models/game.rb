class Game < ActiveRecord::Base
    has_many :signedups
    has_many :users, :through => :appointments
    
end
