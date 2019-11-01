class Trophy

  def initialize(user_id)
    @user = User.find(user_id)
  end

  def set_trophy
    @coins_count = @user.collected_coins_count
    @turtle_count = @user.turtle_killed_monsters_count
    @bowser_count = @user.bowser_killed_monsters_count

    if @coins_count.between?(1,2)
      @user.trophy = 1
    elsif @coins_count.between?(3,4) && @turtle_count != 0
      @user.trophy = 2
    elsif @coins_count > 4 && @turtle_count > 4 && @bowser_count > 4
      @user.trophy = 3
    end
    @user.save
  end

end
