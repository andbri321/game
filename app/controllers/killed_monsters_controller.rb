class KilledMonstersController < ApplicationController
  before_action :set_killed_monsters_count, only: [:index,:create]

  def index
    @killed_monster = current_user.killed_monsters.new
    @monster_all = Monster.all
  end

  def create
    @killed_monster =  current_user.killed_monsters.create(params_id)
    unless @killed_monster.errors.any?
      redirect_to killed_monsters_path
    else
      render :index
    end
  end

  private

  def set_killed_monsters_count
    @turtle_killed_monsters_count = current_user.turtle_killed_monsters_count
    @bowser_killed_monsters_count = current_user.bowser_killed_monsters_count
  end

  def params_id
    params.require(:killed_monster).permit(:id,:monster_id)
  end

end
