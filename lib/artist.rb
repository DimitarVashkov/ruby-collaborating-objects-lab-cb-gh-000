class Artist
  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def print_songs
    @songs.each do |x|
      puts x
    end
  end

end
