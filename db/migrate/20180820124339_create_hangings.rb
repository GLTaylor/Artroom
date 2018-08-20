class CreateHangings < ActiveRecord::Migration[5.2]
  def change
    create_table :hangings do |t|
      t.references :user, foreign_key: true
      t.references :artwork, foreign_key: true

      t.timestamps
    end
  end
end
