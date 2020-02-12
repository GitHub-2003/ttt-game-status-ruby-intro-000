# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

def full?(board)
  WIN_COMBINATIONS.each do |win_combination|
    win_combination.each do |cell|
      print cell
    end
    puts("-----")
  end
end

# 0 1 2
# 3 4 5
# 6 7 8

# Define your WIN_COMBINATIONS constant
def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]
    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]
    if (position_1 == "X" || position_1 == "O") && (position_1 == position_2) && (position_1 == position_3)
      return (win_combination) # return the win_combination indexes that won.
    else
      false
    end
  end
  if false
    return false
  end
end
WIN_COMBINATIONS = [[0,1,2],[3,4,5],[6,7,8],[0,4,8],[2,4,6],[0,3,6],[1,4,7],[2,5,8]]

board = ["X", "O", "X", "O", "X", "X", "O", "X", "O"]
puts full?(board)
# board = ["X", " ", "X", " ", "X", " ", "O", "O", " "]

