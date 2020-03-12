class ChangeNameFildNameOnUser < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :name, :user_alias
  end
end
