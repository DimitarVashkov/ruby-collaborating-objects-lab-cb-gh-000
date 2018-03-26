class Artist
  attr_accessor :name, :songs

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
    @@all << artist
    artist
  end

  def self.find(name)
    self.all.find {|artist| artist.name == name }
  end


  def self.create(name)
    self.new(name).tap {|artist| artist.save}
  end

  def print_songs
    @songs.each do |x|
      puts x.name
    end
  end

end
