class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :title
      t.string :sport
      t.integer :league
      t.string :location
      t.string :time
      t.integer :min
      t.integer :max
      t.integer :sign_ups
      t.text :details
      t.string :emails
      t.string :last_email
      t.integer :back_out
      t.string :password
      t.string :password_confirmation
      t.string :updated_at
      t.string :onestring
      t.string :twostring
      t.integer :oneint
      t.integer :twoint
      t.date :onedate
      t.time :onetime
      t.datetime :onedatetime
      t.decimal :lat
      t.decimal :long
    end
  end
end
