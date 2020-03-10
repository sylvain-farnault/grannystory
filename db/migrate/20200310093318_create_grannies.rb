class CreateGrannies < ActiveRecord::Migration[5.2]
  def change
    create_table :grannies do |t|
      t.string :name, null: false
      t.string :address, null: false
      t.date :birth_date, null: false
      t.references :user, foreign_key: true
      t.float :price, null: false

      t.timestamps
    end
  end
end
