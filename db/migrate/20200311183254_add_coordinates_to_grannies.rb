class AddCoordinatesToGrannies < ActiveRecord::Migration[5.2]
  def change
    add_column :grannies, :latitude, :float
    add_column :grannies, :longitude, :float
  end
end
