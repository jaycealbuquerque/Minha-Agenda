class CreateContatos < ActiveRecord::Migration[5.2]
  def change
    create_table :contatos do |t|
      t.string :nome
      t.integer :telefone
      t.references :user, index: true, foreign_key: true

      t.timestamps
    end
  end
end
