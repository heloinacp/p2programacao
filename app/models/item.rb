class Item < ApplicationRecord

	validates_presence_of :nome, message: "O nome deve ser preenchido"

	belongs_to :produto
	belongs_to :pedido

end
