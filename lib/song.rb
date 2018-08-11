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

  def genre=(genre)
    @genre = genre
    @@genres << genre
  end

  def initialize(name, artist, genre)
    @name = name
    self.artist = artist
    self.genre = genre
    @@count += 1
  end

  def self.count
    @@count
  end

  def self.artists
    unique_artists = []
    @@artists.each do |artist|
      unique_artists << artist if !unique_artists.include(artist)
    end
    unique_artists
  end
end
