class MP3Importer
  attr_reader :path
  def initialize(path)
    @path = path
    @files = []
  end

  def files
    @files = Dir["./db/mp3s/*.mp3"]
  end

  def import
  end
end
