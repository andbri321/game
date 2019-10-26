class AddCollectedCoinsCountToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :collected_coins_count, :integer, :default => 0, :null => false

    User.all.each do |user|
      User.update_counters user.id, :collected_coins_count => user.collected_coins.count
    end
  end
end
