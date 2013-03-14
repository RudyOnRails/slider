class Slider #< Array
  attr_accessor :puzzle


  def initialize(size)
    @puzzle = (0...size).to_a.shuffle
    puts @puzzle.inspect
  end 

  def move(starting_index, ending_index)
    this.print
    temp_start = @puzzle[starting_index]
    temp_end = @puzzle[ending_index]
    if @puzzle[ending_index] == 0
      @puzzle[starting_index] = temp_end 
      @puzzle[ending_index] = temp_start
    end
    this.print
  end


  def print
    puts "#{@puzzle.[](0)}, #{@puzzle.[](1)}"
    puts "#{@puzzle.[](2)}, #{@puzzle.[](3)}"
  end

  def open_slot
    @puzzle.index(0)
  end

  def not_right?

  end

  def valid_moves
    @avail_moves = [[0,1],[1,3],[0,2],[2,3]]
    open = open_slot
    valid_ary = []
    @avail_moves.each do |m|
      valid_ary << m unless !m.include?(open)
    end
    valid_ary
  end

  

end





  puts "what width do you want to use?"
  squares = (gets.chomp.to_i)**2
  puzzle = Slider.new(squares)

  puzzle.print
  puts puzzle.valid_moves

  #@original_puzzle = (0...squares).to_a
  # @original_puzzle << "open"
  #@puzzle = @original_puzzle.shuffle
  
 
  # while @puzzle.not_right? do
  #   move
  # end

  # @puzzle.each_with_index do |square, index|

  # end








  # def valid_moves(avail_moves)
    
  # end