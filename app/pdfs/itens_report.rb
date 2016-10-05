class ItensReport < Prawn::Document
	
	def initialize(itens)
		super()
		@itens = itens
		header
		text_content
		table_content
		item_rows
	end
	
	def header
		#This inserts an image in the pdf file and sets the size of the image
		image "#{Rails.root}/app/assets/images/logo.jpg", width: 530, height: 100
	end
	
	def text_content
		y_position = cursor - 50
		# The bounding_box takes the x and y coordinates for positioning its content and some options to style it
		bounding_box([0, y_position], :width => 540, :height => 50) do
			text "Fast Snack - Seu Lanchinho Rapidinho", size: 15, style: :bold
			text "Listagem de Itens de Pedidos", size: 12, style: :bold
		end
	end

	def table_content
		table item_rows do
		row(0).font_style = :bold
		self.header = true
		self.row_colors = ['DDDDDD', 'FFFFFF']
		self.column_widths = [50,130,50,50,130,130]
		end
	end

	def item_rows
		[['Id Item','Nome', 'Qtd', 'Valor', 'Produto', 'Pedido']] +
		@itens.map do |item|
			[item.idItem, item.nome, item.qtd, item.valor, item.idProduto, item.idPedido ]
		end
	end

end
