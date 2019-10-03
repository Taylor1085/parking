# frozen_string_literal: true

class Payment < ApplicationRecord
  belongs_to :driver

  validates :fee, :driver_id, presence: true
  validates :fee, :driver_id, numericality: { only_integer: true }
end
