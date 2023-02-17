class Piece < ActiveRecord::Base
    has_many :notes
    has_many :performances
    has_many :ensembles, through: :performances
    has_many :concerts, through: :performances

    def when_performed
        @arr = self.concerts.uniq
        @arr.map do |p|
            " #{p.concert_description} in #{p.year}"
        end
    end

    def notes_about
        @arr = self.notes
        @arr.map do |note|
            note.note
        end
    end

    def connect_note_to_piece
        note = Note.last
        note.piece_id = self.id
        note
    end

end