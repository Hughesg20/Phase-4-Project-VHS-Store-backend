class CreateClients < ActiveRecord::Migration[7.0]
  def change
    create_table :clients do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :email
      t.integer :age
      t.boolean :admin
      t.string :username
      t.string :password_digest

      t.timestamps
    end
  end
end
