# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20161003151822) do

  create_table "itens", force: :cascade do |t|
    t.integer  "idItem"
    t.string   "nome"
    t.integer  "qtd"
    t.float    "valor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "produto_id"
    t.integer  "pedido_id"
    t.index ["pedido_id"], name: "index_itens_on_pedido_id"
    t.index ["produto_id"], name: "index_itens_on_produto_id"
  end

  create_table "pedidos", force: :cascade do |t|
    t.integer  "idPedido"
    t.date     "dtPedido"
    t.string   "endereco"
    t.string   "numero"
    t.string   "bairro"
    t.string   "cep"
    t.float    "valorTotal"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "descricao"
  end

  create_table "produtos", force: :cascade do |t|
    t.integer  "idProduto"
    t.string   "nome"
    t.string   "descricao"
    t.float    "valor"
    t.string   "foto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "useres", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_useres_on_email", unique: true
    t.index ["reset_password_token"], name: "index_useres_on_reset_password_token", unique: true
  end

  create_table "usuarios", force: :cascade do |t|
    t.integer  "idUsuario"
    t.string   "email"
    t.string   "senha"
    t.string   "nome"
    t.date     "dtNascimento"
    t.string   "cpf"
    t.string   "foto"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
