class Song
attr_accessor :name, :artist #has a name, belongs to an aritst

@@all = []
  def initialize(name)
    @name = name
    @artist = artist
    @@all << self #pushes new instances(of Song) in variable
  end

def artist_name
if @artist == nil
  return nil
else
  @artist.name
end
end

end
