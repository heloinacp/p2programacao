class CreateProdutos < ActiveRecord::Migration[5.0]
  def change
    create_table :produtos do |t|
      t.integer :idProduto
      t.string :nome
      t.string :descricao
      t.float :valor
      t.string :foto

      t.timestamps
    end
  end
end
