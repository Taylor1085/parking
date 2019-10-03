# frozen_string_literal: true

class Driver < ApplicationRecord
  has_many :tickets
  belongs_to :ticket

  validates :name, presence: true
end
