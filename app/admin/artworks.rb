ActiveAdmin.register Artwork do
permit_params :title, :description, :date, :category, :medium, :mood, :interest, :image, :artist_id

end
