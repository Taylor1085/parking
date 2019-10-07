# frozen_string_literal: true

class ChangeTicketIdToBeStringInDriver < ActiveRecord::Migration[6.0]
  def change
    change_column :drivers, :ticket_id, :string
  end
end
