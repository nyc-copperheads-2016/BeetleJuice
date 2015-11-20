require 'pry'
require 'csv'

module Parser
	def self.get_csv(input)
		if input.capitalize == "Movies"
			movies
		elsif input.capitalize == "Riddles"
			riddles
		else
			put "Not valid"
		end
	end

	def movies
		CSV.foreach('movie.csv',headers: true, convert_headers: :symbol).map do |row|
			deck << Card.new(row)
		end
	end

	def riddles
		CSV.foreach('riddle.csv', headers: true, convert_headers: :symbol).map do |row|
			deck << Card.new(row)
		end
	end
end