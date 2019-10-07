# frozen_string_literal: true

class ChangeTicketNumToBeStringInTicket < ActiveRecord::Migration[6.0]
  def change
    change_column :tickets, :ticketNum, :string
  end
end
