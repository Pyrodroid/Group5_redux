class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :title
      t.string :sport
      t.integer :league
      t.string :location
      t.string :time
      t.string :details
      t.integer :max
      t.integer :min
      t.integer :sign_ups
      t.integer :back_out
      t.string :emails
      t.string :last_email
    end
  end
end
