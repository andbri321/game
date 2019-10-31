class CollectedCoin < ApplicationRecord
  belongs_to :user, :counter_cache => true

  validates :value, presence: true, numericality: true

end
