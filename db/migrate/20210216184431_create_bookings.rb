class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.integer :trip_id
      t.integer :amount_passengers

      t.timestamps
    end
  end
end
