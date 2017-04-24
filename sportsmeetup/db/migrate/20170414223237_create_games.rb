# Migration for creating Games table for Game model
class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |game|
      game.string :title
      game.string :sport
      game.integer :league
      game.string :location
      game.string :time
      game.integer :min
      game.integer :max
      game.integer :sign_ups
      game.text :details
      game.string :emails
      game.string :last_email
      game.integer :back_out
      game.string :password
      game.string :password_confirmation
      game.string :updated_at
      game.string :onestring
      game.string :twostring
      game.integer :oneint
      game.integer :twoint
      game.date :onedate
      game.time :onetime
      game.datetime :onedatetime
      game.decimal :lat
      game.decimal :long
      game.string :full_name
      game.string :extra_string
    end
  end
end
