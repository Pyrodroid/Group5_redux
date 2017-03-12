class User < ActiveRecord::Base
    has_many :signedups
    has_many :games, :through => :appointments
end
