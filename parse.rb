require 'pry'
require 'csv'

module Parser
	def self.get_csv(input)
		if input == "movies"
			self.movies
		elsif input == "riddles"
			self.riddles
		else
			puts "Not valid"
		end
	end

	def self.movies
		CSV.read('movie.csv',:headers=>true,:header_converters=>:symbol)
	end

	def self.riddles
		CSV.read('riddle.csv',:headers=>true,:header_converters=>:symbol)
	end
end