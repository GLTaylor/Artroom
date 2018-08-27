class AddWidthToHanging < ActiveRecord::Migration[5.2]
  def change
    add_column :hangings, :width, :integer
  end
end
