class Produto < ApplicationRecord

	validates_presence_of :nome, message: "O nome deve ser preenchido"

	has_many :itens

	mount_uploader :foto, FotoProdutoUploader
	
end
