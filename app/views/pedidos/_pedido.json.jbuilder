json.extract! pedido, :id, :idPedido, :dtPedido, :endereco, :numero, :bairro, :cep, :valorTotal, :created_at, :updated_at
json.url pedido_url(pedido, format: :json)