# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
[0,1,2],
[3,4,5],
[6,7,8],
[0,3,6],
[1,4,7],
[2,5,8],
[0,4,8],
[2,4,6],
]

def won?(board)
    WIN_COMBINATIONS.each do |winning_combo|
    if  board[winning_combo[0]] == board[winning_combo[1]] && board[winning_combo[1]] == board[winning_combo[2]] && position_taken?(board, winning_combo[0])
      return winning_combo
    else
      false
    end
  end
  return false
end

def full?(board)
  board.all? do |board_full|
    board_full == "X" || board_full == "O"
  end
end
