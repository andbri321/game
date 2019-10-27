class AddAllKindsKilledMonsterCountToUser < ActiveRecord::Migration[5.2]
  def change

    @monters = Monster.all.pluck(:id,:name).to_h
    @monters.each do |key,value|
      add_column :users, "#{value.downcase}_killed_monsters_count",
                 :integer, :default => 0, :null => false
    end

    User.all.each do |user|
      @killed_monsters = user.killed_monsters.group(:monster_id).count
      @monters.each do |key,value|
        User.update_counters user.id,
            "#{value.downcase}_killed_monsters_count" =>
                @killed_monsters[key]
      end
    end

  end
end
