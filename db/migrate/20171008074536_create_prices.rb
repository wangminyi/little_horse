class CreatePrices < ActiveRecord::Migration[5.0]
  def change
    create_table :prices do |t|
      t.references :product, index: true
      t.string :location
      t.integer :price

      t.timestamps

      t.index :location
      t.index :price
    end
  end
end
