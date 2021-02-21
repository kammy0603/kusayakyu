class CreateTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|
      t.string  :teamname,       null: false
      t.integer :prefecture,     null: false
      t.integer :year,           null: false
      t.integer :age,            null: false
      t.integer :frequency,      null: false
      t.integer :level,          null: false
      t.integer :offer,          null: false
      t.string  :achievement,    null: false
      t.string  :location,       null: false
      t.timestamps
    end
  end
end
