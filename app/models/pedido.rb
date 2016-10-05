class Pedido < ApplicationRecord

	validates_presence_of :descricao, message: "A descrição deve ser preenchida"
	has_many :itens

end
