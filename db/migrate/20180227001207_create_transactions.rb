class CreateTransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :transactions do |t|
      t.integer :kind
      t.datetime :occurrence_at
      t.numeric :value
      t.string :cpf
      t.string :card_number
      t.timestamps
    end
  end
end
