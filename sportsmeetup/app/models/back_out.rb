class BackOut < ActiveRecord::Base
    has_many :signedups
    has_many :users, :through => :appointments
    belongs_to :user
    belongs_to :game
end
