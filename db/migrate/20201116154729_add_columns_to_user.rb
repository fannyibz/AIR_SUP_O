class AddColumnsToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :username, :string
    add_column :users, :photo_url, :string
    add_column :users, :bio, :text
  end
end
