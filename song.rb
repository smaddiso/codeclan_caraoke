class Song

attr_reader :name, :artist, :length, :genre

def initialize(name, artist, length, genre)
  @name = name
  @artist = artist
  @length = length
  @genre = genre
end

end
