class BoggleBoard
    attr_accessor :spaces

    def initialize
        # how do we describe it
        # @space = Array.new(16, '_') # for all 16 row _
        @spaces = Array.new(16, "_")
        @alphabet = ('A'..'Z').to_a

        # replace all Q's in @alphabet with Qu

        # Reference:

        # APPROACH #1 - USING MAP AND FLATTEN
        # - https://stackoverflow.com/questions/1704755/how-do-i-replace-an-arrays-element
        # @alphabet.map! { |x| x == "Q" ? "Qu" : x }.flatten!

        # APPROACH #2
        # - https://stackoverflow.com/questions/3720211/what-is-an-elegant-way-to-replace-an-element-of-an-array-based-on-a-match-criter
        # idx = @alphabet.index { |o| o == "Q" }
        # @alphabet[idx] = "Qu"

        # APPROACH #3
        @alphabet.map! { |el| el == "Q" ? "Qu" : el }
        print @alphabet
        # @alphabet = @alphabet - ("Q").to_s
        # @alphabet = @alphabet + ("Qu").to_s
    end
    def shake!
        # take space in a new variable
        # space = @spaces
        # replace them with random letters (pro good idea to create a var for this
        @spaces.map! do |space|
            space = @alphabet.shuffle.take(1)
        end
        @spaces.flatten!
    end
    def to_s
        output_string = String.new
        output_string = @spaces[0..3].join(' ') + "\n"
        #print output
        output_string = output_string + @spaces[4..7].join(' ') + "\n"
        output_string = output_string + @spaces[8..11].join(' ') + "\n"
        output_string = output_string + @spaces[12..15].join(' ') + "\n"
        output_string
    end
end
board = BoggleBoard.new
puts board
puts board.shake!
# puts "I am now generating the Boggle Broad"
puts board
