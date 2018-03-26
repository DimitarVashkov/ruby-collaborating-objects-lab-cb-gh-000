class Artist
  attr_accessor :name

  @@all = []
  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def add_song(song)
    song.artist = self
    @songs << song
  end

  def self.find_or_create_by_name(name)
    artist = Artist.new(name)
    @@all.each do |x|
      if x.name == name
        artist = x
      end
    end
    @all << artist

  end

  def print_songs
    @songs.each do |x|
      puts x.name
    end
  end

end
