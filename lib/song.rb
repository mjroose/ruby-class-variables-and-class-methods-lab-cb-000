class Song
  attr_accessor :name, :genre
  attr_reader :artist
  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    self.artist = artist
    @genre = genre
    @@count += 1
  end

  def artist=(artist)
    @artist = artist
    @@artists << artist if !!@@artists.include?(artist)
  end
end
