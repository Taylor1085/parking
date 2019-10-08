# frozen_string_literal: true

class DriversController < ApplicationController
  def index
    # @drivers = Driver.all
    @drivers = Driver.order(:name).page params[:page]
  end

  def show
    @driver = Driver.find(params[:id])
  end
end
