# frozen_string_literal: true

class Ticket < ApplicationRecord
  belongs_to :driver

  # validates :ticketNum, :street, :violation, presence: true
end
