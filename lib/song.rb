class Song

	attr_accessor :name, :artist

	def initialize(name)
		@name = name

	end

	# def self.new_by_filename(filename)
	# 	song_name = filename.split(" - ")[1]
	# 	artist_name = filename.split(" - ")[0]
	# 	#binding.pry
	# 	song = Song.new(song_name))
	# 	#newsong.artist.add_song(song_name)
	# 	song 
	# end


	def artist_name=(artist_name)
    artist_object = Artist.find_or_create_by_name(artist_name)
    artist_object.add_song(self)
    self.artist= artist_object
  end

 	def self.new_by_filename(filename)
    song = Song.new(filename.split(" - ")[1])
    song.artist_name=(filename.split(" - ")[0])
    song
  end
		

end
