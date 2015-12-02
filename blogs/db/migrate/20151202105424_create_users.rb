class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :gender
      t.string :address
      t.integer :age

      t.timestamps null: false
    end
  end
end
