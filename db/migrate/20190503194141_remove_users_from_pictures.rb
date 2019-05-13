class RemoveUsersFromPictures < ActiveRecord::Migration[5.2]
  def change
    remove_column :pictures, :user, :string
  end
end
