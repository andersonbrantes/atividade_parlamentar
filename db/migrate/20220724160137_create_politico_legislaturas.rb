class CreatePoliticoLegislaturas < ActiveRecord::Migration[7.0]
  def change
    create_table :politico_legislaturas do |t|
      t.string :carteira
      t.time :ano_base
      t.string :uf
      t.string :partido
      t.string :codigo_legislatura
      t.integer :parlamentar_id

      t.timestamps
    end

    add_index :politico_legislaturas, :parlamentar_id
  end
end
