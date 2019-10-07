# frozen_string_literal: true

class DestroyAllTables2 < ActiveRecord::Migration[6.0]
  def change
    drop_table :tickets
    drop_table :drivers
    drop_table :payments
  end
end
