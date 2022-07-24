class CreateFinanceiroDespesaDocumentos < ActiveRecord::Migration[7.0]
  def change
    create_table :financeiro_despesa_documentos do |t|
      t.integer :codigo_doc
      t.string :url
      t.integer :despesa_id

      t.timestamps
    end
  end
end
