# frozen_string_literal: true

class ChangeDriverIdToBeStringInPayment < ActiveRecord::Migration[6.0]
  def change
    change_column :payments, :driver_id, :string
  end
end
