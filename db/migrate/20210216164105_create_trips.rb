class CreateTrips < ActiveRecord::Migration[6.1]
  def change
    create_table :trips do |t|
      t.integer :start, foreign_key: true
      t.integer :end, foreign_key: true
      t.datetime :depart
      t.string :duration

      t.timestamps
    end
  end
end
