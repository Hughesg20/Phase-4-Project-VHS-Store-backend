class CreateRentals < ActiveRecord::Migration[7.0]
  def change
    create_table :rentals do |t|
      t.references :client, null: false, foreign_key: true
      t.references :VHS_Tape, null: false, foreign_key: true

      t.timestamps
    end
  end
end
