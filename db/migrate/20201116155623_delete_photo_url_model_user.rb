class DeletePhotoUrlModelUser < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :photo_url
  end
end
