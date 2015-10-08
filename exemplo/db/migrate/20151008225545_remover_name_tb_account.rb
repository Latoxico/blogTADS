class RemoverNameTbAccount < ActiveRecord::Migration
  def change
    remove_column :accounts, :name
  end
end
