class CollectedCoin < ApplicationRecord
  include CallBackShared

  belongs_to :user, :counter_cache => true

  validates :value, presence: true, numericality: true
  after_save ->(obj) { set_trophy(user_id) }

end
