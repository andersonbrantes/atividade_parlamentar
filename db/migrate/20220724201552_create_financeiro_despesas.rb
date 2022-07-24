class CreateFinanceiroDespesas < ActiveRecord::Migration[7.0]
  def change
    create_table :financeiro_despesas do |t|
      t.integer :tipo_codigo
      t.text :tipo_descricao
      t.integer :especificacao_code
      t.text :especificacao_descricao
      t.string :fornecedor
      t.string :doc_emissor
      t.string :doc_numero
      t.integer :doc_tipo
      t.time :data_emissao
      t.integer :valor_int
      t.integer :valor_glosa_int
      t.integer :valor_liquido_int
      t.integer :mes
      t.integer :ano
      t.integer :parcela
      t.string :viagem_nome_passageiro
      t.string :viagem_trecho
      t.integer :lote
      t.string :numero_ressarcimento
      t.integer :valor_restituicao_int
      t.integer :parlamentar_id

      t.timestamps
    end
  end
end
