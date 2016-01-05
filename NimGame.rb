# Nim Game
# You are playing the following Nim Game with your friend: There is a heap of stones on the table, each time one of you take turns to remove 1 to 3 stones. The one who removes the last stone will be the winner. You will take the first turn to remove the stones.

# Both of you are very clever and have optimal strategies for the game. Write a function to determine whether you can win the game given the number of stones in the heap.


def can_win_nim(n)
    if n % 4 == 0
        return false
    elsif n % 4 == 1
        return true
    elsif n % 4 == 2
        return true
    else % 4 == 3
        return true
    end
end
