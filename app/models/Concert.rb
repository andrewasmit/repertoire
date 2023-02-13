class Concert < ActiveRecord::Base
    has_many :performances
    has_many :pieces, through: :performances
    has_many :ensembles, through: :performances

    def who_performed
        @arr = self.ensembles.uniq
        @arr.map do |ens|
            ens.name
        end
    end

    def pieces_performed
        @arr = self.pieces.uniq
        @arr.map do |p|
            "#{p.title} by #{p.composer}"
        end
    end

    def composers
        @arr = self.pieces.uniq.map do |p|
            p.composer
        end
        @arr.tally
    end
    
# end of Class 
end