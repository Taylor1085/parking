# frozen_string_literal: true

class TicketsController < ApplicationController
  def index
    # @tickets = Ticket.all
    @tickets = Ticket.order(:name).page params[:page]
  end

  def show
    @ticket = Ticket.find(params[:id])
  end
end
