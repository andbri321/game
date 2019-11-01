class KilledMonster < ApplicationRecord
  include CallBackShared

  belongs_to :user
  belongs_to :monster

  after_save :increment_killed_monsters_count
  after_destroy :decrement_killed_monsters_count
  after_save ->(obj) { set_trophy(user_id) }

  private

  def increment_killed_monsters_count
    User.increment_counter(
        "#{self.monster.name.downcase}_killed_monsters_count", user_id)
  end

  def decrement_killed_monsters_count
    User.decrement_counter(
        "#{self.monster.name.downcase}_killed_monsters_count", user_id)
  end

end
