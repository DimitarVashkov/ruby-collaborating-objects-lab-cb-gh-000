class MP3Importer
  attr_reader :path
  def initialize(path)
    @path = path
    @files = []
  end

  def files
    @files = Dir["#{@path}/*.mp3"].each do |x|
      x.gsub("#{@path}",'')
    end
  end

  def import
  end
end
