class Performance < ActiveRecord::Base
    has_many :pieces 
    belongs_to :ensemble 
    belongs_to :concert
end