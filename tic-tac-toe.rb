def win(board)
  winningSituations = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8],
    [0, 4, 8],
    [2, 4, 6],
  ]
  winningSituations.any? { |a| check_line(board, a[0], a[1], a[2]) }
end

def drawBoard(board)
  p row = ["#{board[0]}" "|" "#{board[1]}" "|" "#{board[2]}"]
  p line = "--+-+--"
  p row = ["#{board[3]}" "|" "#{board[4]}" "|" "#{board[5]}"]
  p line
  p row = ["#{board[6]}" "|" "#{board[7]}" "|" "#{board[8]}"]
end

def setPlayerMove(board, index, player)
  board[index] = player
end

def isPosTaken(board, index)
  if (board[index] == " ") || (board[index] == "") || (board[index] == nil)
    return false
  else return true   end
end

def isMoveValid(board, index)
  if index.between?(0, 8) and !isPosTaken(board, index)
    return true
  end
end

def check_line(board, a, b, c)
  a = board[a]
  b = board[b]
  c = board[c]

  return (a == b and a == c and (a == "X" or a == "O"))
end

def isBoardFull(board)
  board.all? { |i| i == "X" or i == "O" }
end

def rounds(board)
  roundCounter = 0
  board.each do |blank|
    if blank == "X" or blank == "O"
      roundCounter += 1
    end
  end
  roundCounter
end

def player(board)
  rounds(board) % 2 == 0 ? "X" : "O"
end

def game(board)
  ctr = 0
  until ctr == 9
    promptMove(board)
    ctr += 1
  end
end

def promptMove(board)
  puts "please enter the position u want"
  drawBoard([1, 2, 3, 4, 5, 6, 7, 8, 9])
  user = gets.strip
  userIndex = user.to_i - 1
  if isMoveValid(board, userIndex) and !isPosTaken(board, userIndex) and !win(board)
    setPlayerMove(board, userIndex, player(board))
    drawBoard(board)
  else
    puts "position invalid"
  end
  if win(board)
    puts "congrats"
  end
end
