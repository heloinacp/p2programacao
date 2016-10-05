class AddProdutoEPedidoToItens < ActiveRecord::Migration[5.0]
  def change
    add_reference :itens, :produto, foreign_key: true
    add_reference :itens, :pedido, foreign_key: true
  end
end
