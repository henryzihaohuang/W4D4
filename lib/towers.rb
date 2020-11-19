class Game
    attr_reader :board

    def initialize
        @board = [[1,2,3,4],[],[]]
    end

    def get_input
        until won?
            begin
                p board
                puts "please enter a starting position (i.e. 0, 1, 2) : "
                start_pos = gets.chomp.to_i
                
                puts "please enter a ending position (i.e. 0, 1, 2) : "
                end_pos = gets.chomp.to_i
    
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
            raise "Not a valid start"
        end
    end

    def valid_end?(pos)
        if  pos.between?(0,2)
            true
        else
            raise "Not a valid end"
    end

    def valid_move?(start_pos, end_pos)
        if board[end_pos].empty? || board[start_pos][0] < board[end_pos][0]
            return true 
        else
            raise "Not a valid move"
        end
    end

    def play_move(start_pos, end_pos)
        board[end_pos].unshift(board[start_pos].shift)
    end

    def won?
        if board[0].empty? && board[1].empty?
            puts "you won!"
            true
        end
    end
end
end