=begin Pseudocode
	Think about using a switch statement to accomplish this problem

=end

class Complement
	def self.of_dna(strand)
		
		strand.each_char do |char|

		end

	end

	def transcribe(char)
		case char
		when "G"
			return "C"
		when "C"
			return "G"
		when "T"
			return "A"
		when "A"
			return "U"
		end
	end

end

this_thing = Complement.new
p this_thing.transcribe("A")