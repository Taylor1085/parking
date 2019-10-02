# frozen_string_literal: true

class Driver < ApplicationRecord
  belongs_to :ticket

  validates :name, presence: true
end
