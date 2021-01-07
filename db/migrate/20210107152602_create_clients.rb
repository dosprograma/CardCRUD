class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.integer :CPF
      t.string :Adress
      t.string :RG
      t.integer :Phone
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
