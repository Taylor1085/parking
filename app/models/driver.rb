# frozen_string_literal: true

class Driver < ApplicationRecord
  has_many :tickets
  belongs_to :ticket

  validates :name, :phoneNum, :ticket_id, presence: true
  validates :phoneNum, :ticket_id, numericality: { only_integer: true }
end
