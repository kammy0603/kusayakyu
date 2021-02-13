class AddNicknameToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :name, :string
    add_column :users, :name_kana, :string
    add_column :users, :birthday, :date
    add_column :users, :prefecture, :integer
    add_column :users, :city, :integer
    add_column :users, :baseball_term, :integer
    add_column :users, :level, :integer
    add_column :users, :hope_frequency, :integer
    add_column :users, :players_registration, :integer
    add_column :users, :achievement, :date

  end
end
