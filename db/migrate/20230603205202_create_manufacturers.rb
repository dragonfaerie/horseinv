class CreateManufacturers < ActiveRecord::Migration[6.1]
  def change
    create_table :manufacturers do |t|
      t.string :manufacturer

      t.timestamps
    end
  end
end
