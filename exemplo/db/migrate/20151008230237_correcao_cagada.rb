class CorrecaoCagada < ActiveRecord::Migration
  def change
    add_column :accounts, :name, :string
    add_column :users, :mail, :string
    add_column :users, :password, :string
    end
end
