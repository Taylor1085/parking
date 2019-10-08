# frozen_string_literal: true

class ChangeTicketNumTypeToInteger < ActiveRecord::Migration[6.0]
  def change
    change_column :tickets, :ticketNum, :integer
  end
end
