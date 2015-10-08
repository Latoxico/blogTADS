class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :agencia
      t.string :banco
      t.string :conta
      t.float  :saldo
      t.float  :limite
      t.float  :codigo_cliente
      t.date   :data_cadastro
      t.string :cpf
      t.timestamps null: false
    end
  end
end
