# frozen_string_literal: true

class DestroyTicketsTableAndRecreate < ActiveRecord::Migration[6.0]
  def change
    drop_table :tickets

    create_table :tickets do |t|
      t.string :ticketNum
      t.string :violation
      t.string :street
      t.date :date
      t.references :driver, null: false, foreign_key: true

      t.timestamps
    end
  end
end
