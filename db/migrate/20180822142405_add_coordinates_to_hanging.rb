class AddCoordinatesToHanging < ActiveRecord::Migration[5.2]
  def change
    add_column :hangings, :left, :integer
    add_column :hangings, :top, :integer
  end
end
