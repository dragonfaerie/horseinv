class AddColorToHorses < ActiveRecord::Migration[6.1]
  def change
    add_column :horses, :color, :string
  end
end
