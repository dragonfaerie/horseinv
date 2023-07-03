class CreateMolds < ActiveRecord::Migration[6.1]
  def change
    create_table :molds do |t|
      t.string :mold

      t.timestamps
    end
  end
end
