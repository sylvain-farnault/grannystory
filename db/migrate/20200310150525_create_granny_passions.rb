class CreateGrannyPassions < ActiveRecord::Migration[5.2]
  def change
    create_table :granny_passions do |t|
      t.references :granny, foreign_key: true, null: false
      t.references :passion, foreign_key: true, null: false

      t.timestamps
    end
  end
end
