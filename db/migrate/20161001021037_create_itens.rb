class CreateItens < ActiveRecord::Migration[5.0]
  def change
    create_table :itens do |t|
      t.integer :idItem
      t.string :nome
      t.integer :qtd
      t.float :valor

      t.timestamps
    end
  end
end
