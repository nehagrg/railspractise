class CreateArticales < ActiveRecord::Migration
  def change
    create_table :articales do |t|
      t.belongs_to :user
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
