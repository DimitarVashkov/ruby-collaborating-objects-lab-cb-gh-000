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
    puts input
    song = Song.new(input[1])
    artist = Artist.find_or_create_by_name(input[0])
    song.artist = artist
  end

end
