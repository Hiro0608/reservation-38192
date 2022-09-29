class CreateResidences < ActiveRecord::Migration[6.0]
  def change
    create_table :residences do |t|
      t.string     :post_code, null: false 
      t.references :address, null: false 
      t.string     :city, null: false 
      t.string     :house_number, null: false
      t.string     :building_name 
      t.string     :phone_number, null: false
      t.references :order, null: false, foreign_key: true
      t.timestamps
    end
  end
end

