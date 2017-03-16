class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :title
      t.string :sport
      t.integer :league
      t.string :location
      t.string :time
      t.text :details
      t.integer :max
      t.integer :min
      t.integer :sign_ups
      t.string :emails
    end
  end
end
