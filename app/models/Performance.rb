class Performance < ActiveRecord::Base
    belongs_to :piece
    belongs_to :ensemble 
    belongs_to :concert

    def piece
        piece = Piece.find(self.piece_id)
        piece.title
    end

    
end