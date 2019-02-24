class CreateTipos < ActiveRecord::Migration[5.2]
  def change
    create_table :tipos do |t|
      t.string :nome
      t.string :descricao
      t.references :user, index: true, foreign_key: true
      


      t.timestamps
    end
  end
end
