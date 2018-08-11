class Song
  attr_accessor :name
  attr_reader :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []

  def artist=(artist)
    @artist = artist
    @@artists << artist # if !!@@artists.include?(artist)
  end

  def initialize(name, artist, genre)
    @name = name
    self.artist = artist
    @genre = genre
    @@count += 1
  end


end
