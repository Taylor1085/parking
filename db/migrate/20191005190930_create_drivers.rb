class CreateDrivers < ActiveRecord::Migration[6.0]
  def change
    create_table :drivers do |t|
      t.references :ticket, null: false, foreign_key: true
      t.string :name
      t.integer :phoneNum

      t.timestamps
    end
  end
end
