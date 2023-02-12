class Concert < ActiveRecord::Base
    has_many :performances
    has_many :pieces, through: :performances
    has_many :ensembles, through: :performances
end