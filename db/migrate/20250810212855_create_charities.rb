class CreateCharities < ActiveRecord::Migration[8.0]
  def change
    create_table :charities, id: :uuid do |t|
      t.text :name, null: false
      t.text :slug, null: false
      t.text :needs, array: true, default: []
      t.text :contact_email
      t.text :registration_number

      t.datetime :archived_at
      t.timestamps
    end

    add_index :charities, :name, unique: true
    add_index :charities, :slug, unique: true
  end
end
