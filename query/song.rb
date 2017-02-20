class Song < ApplicationModel
  has_many :genres

  scope :by_artist, -> (artist) { where('lower(artist) = ?', artist.downcase) }
  scope :by_album, -> (album) { where('lower(album) = ?', album.downcase) }
  scope :by_title, -> (title) { where('lower(title) = ?', title.downcase) }
  scope :before_year, -> (year) { where('year <= ?', year) }
  scope :after_year, -> (year) { where('year >= ?', year) }
  scope :with_genre, -> (genre) { joins(:genres).where(genres: { name: genre }) }
  scope :visible, -> { where(visible: true) }
end
