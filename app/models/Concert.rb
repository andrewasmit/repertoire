class Concert < ActiveRecord::Base
    has_many :performances
    has_many :pieces, through: :performances
    belongs_to :ensemble
end