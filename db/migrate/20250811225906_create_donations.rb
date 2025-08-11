class CreateDonations < ActiveRecord::Migration[8.0]
  def change
    create_table :donations, id: :uuid do |t|
      t.text :name, null: false
      t.text :slug, null: false
      t.integer :quantity, null: false
      t.text :condition

      t.datetime :claimed_at
      t.datetime :picked_up_at
      t.datetime :archived_at
      t.timestamps
    end

    add_index :donations, :slug, unique: true
  end
end
