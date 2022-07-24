class CreateRelatoriosArquivosExternos < ActiveRecord::Migration[7.0]
  def change
    create_table :relatorios_arquivos_externos do |t|
      t.string :nome
      t.integer :status, default: 0

      t.timestamps
    end

    add_index :relatorios_arquivos_externos, :status
  end
end
