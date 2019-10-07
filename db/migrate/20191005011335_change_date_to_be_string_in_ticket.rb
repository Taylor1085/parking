# frozen_string_literal: true

class ChangeDateToBeStringInTicket < ActiveRecord::Migration[6.0]
  def change
    change_column :tickets, :date, :string
  end
end
