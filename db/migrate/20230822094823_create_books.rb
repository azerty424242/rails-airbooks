class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :description
      t.integer :published_year
      t.string :author_name
      t.string :title
      t.string :category
      t.string :cover_url
      t.integer :price_per_day
      t.references :owner, null: false, foreign_key: { to_table: "users" }

      t.timestamps
    end
  end
end
