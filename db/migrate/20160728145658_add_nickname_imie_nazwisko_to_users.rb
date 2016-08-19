class AddNicknameImieNazwiskoToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :nickname, :string
    add_column :users, :imie, :string
    add_column :users, :nazwisko, :string
  end
end
