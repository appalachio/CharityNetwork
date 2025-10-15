class CreatePages < ActiveRecord::Migration[8.0]
  def change
    create_table :pages, id: :uuid do |t|
      t.text :title, null: false
      t.text :slug, null: false
      t.text :subtitle

      t.belongs_to :user, type: :uuid

      t.datetime :published_at
      t.datetime :archived_at
      t.timestamps
    end

    add_index :pages, :slug, unique: true
  end
end
