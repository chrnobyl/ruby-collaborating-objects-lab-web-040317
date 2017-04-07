require 'pry'
class MP3Importer

	attr_accessor :path, :loc

	def initialize(path)
		@path = path
		
	end

	def files
		Dir.entries(@path)[2..-1]
		#binding.pry
	end

	def import
		files.each do |el|
			Song.new_by_filename(el)
		end
				
	end

end