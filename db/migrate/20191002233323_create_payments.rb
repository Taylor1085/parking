# frozen_string_literal: true

class CreatePayments < ActiveRecord::Migration[6.0]
  def change
    create_table :payments do |t|
      t.integer :fee
      t.references :driver, null: false, foreign_key: true

      t.timestamps
    end
  end
end
