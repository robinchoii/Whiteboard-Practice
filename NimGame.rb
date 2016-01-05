#

# @param {Integer} n
# @return {Boolean}
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

p can_win_nim(4)