class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :brand
      t.string :label
      t.string :image

      t.timestamps

      t.index :name
      t.index :brand
    end
  end
end
