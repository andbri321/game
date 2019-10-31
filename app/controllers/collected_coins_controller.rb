class CollectedCoinsController < ApplicationController

  before_action :set_collected_coins_count, only: [:index,:create]

  def index
    @collected_coin = current_user.collected_coins.new
  end

  def create
    @collected_coin =  current_user.collected_coins.create(value:params[:value])
    unless @collected_coin.errors.any?
      redirect_to collected_coins_index_path
    else
      render :index
    end
  end

  def set_collected_coins_count
    @collected_coins_count = current_user.collected_coins_count
  end

end
