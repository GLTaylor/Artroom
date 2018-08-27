ActiveAdmin.register Artist do

permit_params :name, :nationality, :biography, :birthday, :deathday, :location, :image
end
