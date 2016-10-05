class CreatePedidos < ActiveRecord::Migration[5.0]
  def change
    create_table :pedidos do |t|
      t.integer :idPedido
      t.date :dtPedido
      t.string :endereco
      t.string :numero
      t.string :bairro
      t.string :cep
      t.float :valorTotal

      t.timestamps
    end
  end
end
