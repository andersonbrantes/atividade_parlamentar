class CreatePoliticoParlamentars < ActiveRecord::Migration[7.0]
  def change
    create_table :politico_parlamentars do |t|
      t.string :nome
      t.string :cpf
      t.string :codigo_cd

      t.timestamps
    end
  end
end
