class CreateHorses < ActiveRecord::Migration[6.1]
  def change
    create_table :horses do |t|
      t.integer :make
      t.string :mold
      t.string :released_as
      t.string :breed
      t.string :pattern
      t.string :gender
      t.string :finish
      t.string :size
      t.integer :user_id
      t.string :location
      t.boolean :verified
      t.string :office_pony
      t.integer :purchase_price
      t.string :condition

      t.timestamps
    end
  end
end
