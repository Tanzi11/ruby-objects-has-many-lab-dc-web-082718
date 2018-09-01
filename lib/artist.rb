class Artist
  attr_accessor :name, :songs #has attr_accessor for name
@@song_count = 0

def initialize (name) #is initialized w/ name
    @name = name
    @songs = [] #has many songs
  end

def add_song(song) #takes argument of song
  @songs << song #adding the song into array of songs
  song.artist = self #associates that song w/ artist
  @@song_count += 1 #increases in value
end

def add_song_by_name(name) # argument of song name
  song = Song.new(name) #creates new song w/ name
  @songs << song
  song.artist = self #associates song and artist
  @@song_count += 1 #increases in value
end

def self.song_count #class method returns total number of songs
  @@song_count
end

end
