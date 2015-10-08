class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string   :last_name
      t.string   :address
      t.integer  :code
      t.timestamps null: false
    end
  end
end
