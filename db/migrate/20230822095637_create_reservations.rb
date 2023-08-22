class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.date :begin_date
      t.date :end_date
      t.string :status
      t.integer :total_price
      t.references :book, null: false, foreign_key: true
      t.references :renter, null: false, foreign_key: { to_table: "users" }

      t.timestamps
    end
  end
end
