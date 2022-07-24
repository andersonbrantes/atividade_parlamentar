# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_07_24_201657) do
  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "financeiro_despesa_documentos", force: :cascade do |t|
    t.integer "codigo_doc"
    t.string "url"
    t.integer "despesa_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "financeiro_despesas", force: :cascade do |t|
    t.integer "tipo_codigo"
    t.text "tipo_descricao"
    t.integer "especificacao_code"
    t.text "especificacao_descricao"
    t.string "fornecedor"
    t.string "doc_emissor"
    t.string "doc_numero"
    t.integer "doc_tipo"
    t.time "data_emissao"
    t.integer "valor_int"
    t.integer "valor_glosa_int"
    t.integer "valor_liquido_int"
    t.integer "mes"
    t.integer "ano"
    t.integer "parcela"
    t.string "viagem_nome_passageiro"
    t.string "viagem_trecho"
    t.integer "lote"
    t.string "numero_ressarcimento"
    t.integer "valor_restituicao_int"
    t.integer "parlamentar_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "politico_legislaturas", force: :cascade do |t|
    t.string "carteira"
    t.time "ano_base"
    t.string "uf"
    t.string "partido"
    t.string "codigo_legislatura"
    t.integer "parlamentar_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["parlamentar_id"], name: "index_politico_legislaturas_on_parlamentar_id"
  end

  create_table "politico_parlamentars", force: :cascade do |t|
    t.string "nome"
    t.string "cpf"
    t.string "codigo_cd"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "relatorios_arquivos_externos", force: :cascade do |t|
    t.string "nome"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "report_manager_external_files", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
end
