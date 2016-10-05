json.extract! produto, :id, :idProduto, :nome, :descricao, :valor, :foto, :created_at, :updated_at
json.url produto_url(produto, format: :json)