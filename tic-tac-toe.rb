def board(board)
    p row = ["#{board[0]}" "|" "#{board[1]}" "|" "#{board[2]}"]
    p line = "----+---+----"
    p row = ["#{board[3]}" "|" " #{board[4]}" "|" "#{board[5]}"]
    p line
    p row = ["#{board[6]}   " "|" " #{board[7]}  " "|" "  #{board[8]} "]
end
def playerMove(board,index,player)
    board[index] = player
end
def posTaken(board,index)
    if(board[index]==" ")||(board[index]=="")||(board[index]==nil)
        return false
    else return true
    end
end
def isValid(board,index)
    if index.between?(0,8) and !posTaken?(board, index)
        return true
    end
end
def promptMove
    puts "please enter the position u want"
    user = gets.strip
    userIndex=user.to_i-1
    if isValid?(board,userIndex)
end

