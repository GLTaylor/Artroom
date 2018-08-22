class Artwork < ApplicationRecord
  belongs_to :artist

  validates :title, presence: true
  validates :image, presence: true
  validates :mood, presence: true
  validates :interest, presence: true

  include PgSearch
  pg_search_scope :search_by_mood, against: [ :mood ]
  pg_search_scope :search_by_interest, against: [ :interest ]
end
