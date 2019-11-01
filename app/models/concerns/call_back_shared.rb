module CallBackShared
  extend ActiveSupport::Concern

  def set_trophy(user_id)
    t = Trophy.new(user_id)
    t.set_trophy
  end

end