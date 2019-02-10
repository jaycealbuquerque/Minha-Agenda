class CreateContatos < ActiveRecord::Migration[5.2]
  def change
    create_table :contatos do |t|
      t.string :nome
      t.integer :telefone

      t.timestamps
    end
  end
end