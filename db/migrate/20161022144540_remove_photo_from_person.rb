class RemovePhotoFromPerson < ActiveRecord::Migration[5.0]
  def change
    remove_column :people, :photo, :string
  end
end
