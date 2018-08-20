class Artist < ApplicationRecord
  has_many :artworks

  validates :name, presence: true, uniqueness: true
  validates :biography, presence: true
end
