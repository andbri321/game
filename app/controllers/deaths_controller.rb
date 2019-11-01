class DeathsController < ApplicationController
  before_action :set_deaths_count, only: [:index,:create]

  def index
    @deaths = current_user.deaths.new
  end

  def create
    @deaths =  current_user.deaths.create()
    unless @deaths.errors.any?
      redirect_to deaths_path
    else
      render :index
    end
  end

  def set_deaths_count
    @deaths_count = current_user.deaths_count
  end

end
