class CreateGrannies < ActiveRecord::Migration[5.2]
  def change
    create_table :grannies do |t|
      t.string :name
      t.string :address
      t.date :birth_date
      t.references :user, foreign_key: true
      t.float :price

      t.timestamps
    end
  end
end
