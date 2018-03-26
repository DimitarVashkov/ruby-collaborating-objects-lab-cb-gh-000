class Song
  attr_accessor :name
  attr_reader :artist

  def initialize(name)
    @name = name
  end

  def artist=(artist)
    @artist = artist
  end

  def self.new_by_filename(file)
    input = file.split(' - ')
    song = Song.new(input[0])
    song.artist = input[1]
  end

end
