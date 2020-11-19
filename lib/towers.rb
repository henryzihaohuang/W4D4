class Game
    attr_reader :board

    def initialize
        @board = [[1,2,3,4],[],[]]
    end

    def get_input
        until won?
            begin
                puts "please enter a starting position (i.e. 0, 1, 2) : "
                start_pos = gets.chomp 
debugger
                puts "please enter a ending position (i.e. 0, 1, 2) : "
                end_pos = gets.chomp
        
debugger
                play_move(start_pos, end_pos) if valid_move?(start_pos, end_pos)
            rescue
                puts "Not a valid move, please try again."
                retry

            end
        end

    end

    def valid_start?(pos)
        if !board[pos].empty? && pos.between?(0, 2)
            true 
        else
            puts "test2"
            raise "Not a valid start"
            
        end
    end

    def valid_end?(pos)
        pos.between?(0,2)
    end
require'byebug'
    def valid_move?(start_pos, end_pos)
        debugger
        #first disk in start array < first disk in end array
        if board[end_pos].empty? || board[start_pos][0] < board[end_pos][0]
            return true 
        else
            raise "Not a valid move"
        end
    end

    def play_move(start_pos, end_pos)
        @board = board[end_pos].unshift(board[start_pos].shift)
        @board[start_pos][0].delete
    end

    def won?
        if board[0].empty? && board[1].empty?
            puts "you won!"
            true
        end
    end

end