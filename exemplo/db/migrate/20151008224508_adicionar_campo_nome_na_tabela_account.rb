class AdicionarCampoNomeNaTabelaAccount < ActiveRecord::Migration
  def change
    add_column :accounts, :nome, :string
  end
end
