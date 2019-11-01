class CreateMonsters < ActiveRecord::Migration[5.2]
  def change
    create_table :monsters do |t|
      t.string :name

      t.timestamps
    end
    Monster.create(name:'Turtle');
    Monster.create(name:'Bowser');
  end
end
