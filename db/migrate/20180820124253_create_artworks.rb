class CreateArtworks < ActiveRecord::Migration[5.2]
  def change
    create_table :artworks do |t|
      t.string :title
      t.text :description
      t.references :artist, foreign_key: true
      t.string :date
      t.string :category
      t.string :medium
      t.string :string
      t.string :mood
      t.string :image
      t.string :interest

      t.timestamps
    end
  end
end
