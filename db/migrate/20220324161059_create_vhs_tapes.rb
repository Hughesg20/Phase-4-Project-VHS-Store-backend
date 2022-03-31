class CreateVhsTapes < ActiveRecord::Migration[7.0]
  def change
    create_table :vhs_tapes do |t|
      t.string :title
      t.string :description
      t.string :rating
      t.float :price
      
      t.timestamps
    end
  end
end
