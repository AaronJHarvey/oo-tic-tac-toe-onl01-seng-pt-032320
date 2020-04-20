class TicTacToe
def initialize(board = nil)
  @board = board || Array.new(9," ")
end

WIN_COMBINATIONS = [
[0,1,2],
[0,3,6],
[0,4,8],
[1,4,7],
[2,5,8],
[2,4,6],
[3,4,5],
[6,7,8]
]
  
def display_board
   puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end
  
  def input_to_index(num)
   num.to_i-1
  end
  
  def move (index,token = "X")
@board[index] = token
  end
  
  def position_taken?(index)
   @board[index] != " "
 end

def valid_move?(index)
  !position_taken?(index) && index.between?(0,8)
end

def turn_count
 def turn_count
    @board.count{|square| square != " " }
  end
end



def turn
  puts "Please put a number (1-9):"
  num = gets.strip
  index = input_to_index(num)
  if valid_move?(index)
    token = current_player 
    move(index, token)
  else
    turn
  end
  display_board
end




end
