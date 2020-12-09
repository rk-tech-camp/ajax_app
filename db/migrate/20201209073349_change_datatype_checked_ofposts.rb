class ChangeDatatypeCheckedOfposts < ActiveRecord::Migration[6.0]
  def change
    change_column :posts, :checked, :boolean
  end
end
