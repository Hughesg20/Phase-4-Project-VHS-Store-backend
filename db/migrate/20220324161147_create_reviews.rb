class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.references :vhs_tapes, null: false, foreign_key: true
      t.string :review
      t.timestamps
    end
  end
end
