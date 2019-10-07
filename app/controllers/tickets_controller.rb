# frozen_string_literal: true

class TicketsController < ApplicationController
  def index
    @tickets = Ticket.all
  end

  def show; end
end
