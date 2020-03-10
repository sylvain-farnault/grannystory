class CreatePassions < ActiveRecord::Migration[5.2]
  def change
    create_table :passions do |t|
      t.string :name, null: false

      t.timestamps
    end
  end
end
