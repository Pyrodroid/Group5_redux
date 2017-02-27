class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.string :rating
      t.text :description
      t.datetime :release_date
      # Add fields that let Rails automatically keep track
      # of when movies are added or modified:
      t.timestamps
    end
  end
end

class CreateMeet < ActiveRecord::Migration
  def change
    create_table :meets do |t|
      t.string :title
      t.string :sport
      t.text :description
      t.date :date
      t.time :time
      t.string :location
      # Add fields that let Rails automatically keep track
      # of when movies are added or modified:
      t.timestamps
    end
  end
end
