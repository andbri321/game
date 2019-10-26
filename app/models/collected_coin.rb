class CollectedCoin < ApplicationRecord
  belongs_to :user, :counter_cache => true
end
