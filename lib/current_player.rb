def turn_count(board)
   counter = 0
  board.each do |index|
      if index == "X" || index == "O"
        counter += 1
      end
  
end
return counter
end

def current_player(board)
  if turn_count(board) % 2 == 0 
    return "X"
  else
    return "O"
  end
end

def over?(board)
  if won?(board) || full?(board) || draw?(board)
    return true
  else
    return false
  end
end