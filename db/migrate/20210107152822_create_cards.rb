class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.string :Stripe
      t.integer :Number
      t.string :Type_card
      t.integer :CSV
      t.references :client, foreign_key: true

      t.timestamps
    end
  end
end
