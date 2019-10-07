class CreatePayments < ActiveRecord::Migration[6.0]
  def change
    create_table :payments do |t|
      t.references :driver, null: false, foreign_key: true
      t.integer :fee

      t.timestamps
    end
  end
end
