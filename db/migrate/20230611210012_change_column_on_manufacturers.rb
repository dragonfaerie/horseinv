class ChangeColumnOnManufacturers < ActiveRecord::Migration[6.1]
  def change
    remove_column :manufacturers, :manufacturer, :integer
    add_column :manufacturers, :make, :integer
  end
end
