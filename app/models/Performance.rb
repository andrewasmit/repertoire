class Performance < ActiveRecord::Base
    belongs_to :piece
    belongs_to :ensemble 
    belongs_to :concert
end