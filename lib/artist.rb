require 'pry'
require 'song.rb'

class Artist

	attr_accessor :name, :songs

	@@all = []

	def initialize(name)
		@name = name
		@songs = []
		save
	end

  def add_song(song)
		@songs << song
		song.artist = self
	end

	def add_song_by_name(name)
		song = Song.new(name)
		add_song(song)
	end

	def save
    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.create_by_name(name)
  	Artist.new(name)
  end

  def self.find_by_name(name)
  	 #  @@all.each do |el|
  		# if el.name == name
  		#   return el
  		# end
  	 #  end
  	 @@all.find{|x| x.name == name}
  end


  def self.find_or_create_by_name(name)
	  if find_by_name(name)
		  find_by_name(name)
	  else
		  create_by_name(name)
	  end
	  #binding.pry
	  #@@all.include?(name) ? self.find_by_name(name) : create_by_name(name)
  end

  def print_songs
  	songs.each do |song|
  		puts song.name
  	end
  end

end
