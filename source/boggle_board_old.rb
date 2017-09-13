class BoggleBoard
  def initialize
      # how do we describe it
    #   @space = Array.new(16, '_') # for all 16 row _
      @spaces = Array.new(16, "_")
      @alphabet = ('A'..'Z').to_a
      @alphabet = @alphabet - ("Q")
      @alphabet = @alphabet + ("Qu")


  end

# what does it do
# when the
  def shake!
    # take space in a new variable
    # space = @spaces
    # replace them with random letters (pro good idea to create a var for this)

       @spaces.map! do |space|
           space = @alphabet.shuffle.take(1)
       end
 end
    # output_letter = String.new

        # # make them loop run for 4 rows
        # 4.times do
        #     output_letter << @newalphabet.shift(4).join(' ') + "\n"
        # end


    # output_letter.to_s

    # thio code below work same as above and using sample method to get random sample.

    # output_letter = String.new
    #
    # alphabet_array =  @alphabet
    # alphabet_array = alphabet_array.sample(16)
    #
    # 4.times do
    #    output_letter << alphabet_array.shift(4).join(' ') + "\n"
    #
    # end
    #
    #  output_letter.to_s


  # Defining to_s on an object controls how the object is
  # represented as a string, e.g., when you pass it to puts
  def to_s
    # print @space
    @spaces
    # print out 16 _
    # @space.join("a")

    # a new string for the output
    output_string = String.new
    #making a variable to medd with so I dont screw up my instance variable
    # letter_array = @spaces
    # print the output

    # how do I put them in for lines.
    # print out 4 line
    # print ut 4 line and space
    # take the empty output_string
    # add 4 items from letter_array to the output_string
    # join them with a ''
    # add a line break
    # do this process 3 more times

    # 4.times do
    #    output_string << letter_array.shift(4).join(' ') + "\n"
    #
    # end

    output_string = @spaces[0..3].join(' ') + "\n"

    #print output
    output_string = output_string + @spaces[4..7].join(' ') + "\n"
    output_string = output_string + @spaces[8..11].join(' ') + "\n"
    output_string = output_string + @spaces[12..15].join(' ') + "\n"

    puts output_string

  end
end

board = BoggleBoard.new
# display on screen for board instance object from BoggleBoard class and using to_s methods to convert them to string data type

# puts board.to_s

# display output for board object same
puts board

# puts board.shake!.to_s
puts "I am now generating the Boggle Broad"
 puts board.shake!
 puts board
