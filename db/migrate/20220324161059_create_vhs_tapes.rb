class CreateVhsTapes < ActiveRecord::Migration[7.0]
  def change
    create_table :vhs_tapes do |t|
      t.string :Title
      t.string :description
      t.string :Rating
      t.float :Price
      
      t.timestamps
    end
  end
end
