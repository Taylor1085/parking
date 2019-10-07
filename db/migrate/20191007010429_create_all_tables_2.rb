# frozen_string_literal: true

class CreateAllTables2 < ActiveRecord::Migration[6.0]
  def change
    create_table :drivers do |t|
      t.string :name
      t.integer :phoneNum

      t.timestamps
    end

    create_table :tickets do |t|
      t.string :ticketNum
      t.string :violation
      t.string :street
      t.date :date
      t.references :drivers, null: false, foreign_key: true

      t.timestamps
    end
  end
end
