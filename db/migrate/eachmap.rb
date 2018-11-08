names = ["Taylor", "Jack", "Tess", "Will", "Garrett"]
new_names = []

names.each do |name|
  new_name = name + " Lindsay"
  new_names << new_name
end

print new_names

names.map do |name|
  name = name + " Lindsay"
end

print names
