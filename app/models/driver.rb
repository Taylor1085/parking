# frozen_string_literal: true

class Driver < ApplicationRecord
  has_many :tickets

  validates :name, :phoneNum, presence: true
  validates :age, numericality: { only_integer: true }
end
