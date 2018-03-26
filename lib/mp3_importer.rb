class MP3Importer
  attr_reader :path
  def initialize(path)
    @path = path
    @files = []
  end

  def files
    @files = Dir["#{@path}/*.mp3"].map do |x|
      x.sub("#{@path}/",'')
    end
  end

  def import
    puts 'Inside method'
    @files.each do |file|
      puts 'Nothing happens'
      puts file
      Song.new_by_filename(file)
    end
  end
end
