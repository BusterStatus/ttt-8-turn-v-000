board = [" "," "," "," "," "," "," "," "," "]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board,index)
  if position_taken?(board,index) == false && index.between?(0,8) == true
    true
  else
    false
  end
end

def position_taken?(board,index)
  if board[index] == " " || board[index] == "" || board[index] ==  nil
    false
  else
    true
  end
end

def input_to_index(userInput)
  index = userInput.to_i - 1
end

def move(boardArray, indexToFill, xOrO = "X")
  boardArray[indexToFill] = xOrO
end

def turn(board)
  puts "Please enter 1-9:"
  userInput = gets.strip
  index = input_to_index(userInput)
  if valid_move?(board,index) == true
    move(board,index)
    display_board(board)
  else
    turn(board)
  end
end