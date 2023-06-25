class ChangeColumnOnHorses < ActiveRecord::Migration[6.1]
  def change
    change_column(:horses, :breed, :integer)
  end
end
