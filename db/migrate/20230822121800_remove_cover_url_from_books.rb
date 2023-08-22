class RemoveCoverUrlFromBooks < ActiveRecord::Migration[7.0]
  def change
    remove_column :books, :cover_url, :string
  end
end
