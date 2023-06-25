class ChangeColumnOnManufacturersAgain < ActiveRecord::Migration[6.1]
  def change
    remove_column :manufacturers, :make, :integer
    add_column :manufacturers, :make, :string
  end
end
