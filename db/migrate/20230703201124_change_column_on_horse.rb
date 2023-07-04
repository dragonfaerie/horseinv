class ChangeColumnOnHorse < ActiveRecord::Migration[6.1]
  def change
    change_column(:horses, :mold, :integer)
  end
end
