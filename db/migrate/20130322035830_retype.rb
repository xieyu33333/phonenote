class Retype < ActiveRecord::Migration
  def up
    change_column :notes , :phone , :string
  end

  def down
    change_column :notes , :phone , :integer
  end
end
