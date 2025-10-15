class CreateDonations < ActiveRecord::Migration[8.0]
  def change
    create_table :donations, id: :uuid do |t|
      t.text :name, null: false
      t.text :slug, null: false
      t.text :category, null: false
      t.integer :quantity, null: false
      t.text :condition

      t.belongs_to :claimed_by, foreign_key: true, type: :uuid, foreign_key: {
        to_table: "public.charities"
      }
      t.belongs_to :user, type: :uuid

      t.datetime :claimed_at
      t.datetime :archived_at
      t.timestamps
    end

    add_index :donations, :slug, unique: true
  end
end
