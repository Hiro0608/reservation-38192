class CreateReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :reservations do |t|
      t.string     :name, null: false
      t.integer    :price, null: false
      t.text       :introduction, null: false
      t.references :user, foreign_key: true
      t.integer    :category_id, null: false
      t.integer    :status_id, null: false
      t.integer    :address_id, null: false
      t.timestamps
    end
  end
end
