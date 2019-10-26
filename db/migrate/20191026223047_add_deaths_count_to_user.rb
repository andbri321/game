class AddDeathsCountToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :deaths_count, :integer, :default => 0, :null => false

    User.all.each do |user|
      User.update_counters user.id, :deaths_count => user.deaths.count
    end
  end
end
