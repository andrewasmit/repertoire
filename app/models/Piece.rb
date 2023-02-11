class Piece < ActiveRecord::Base
    has_many :notes
    has_many :performances
    has_many :ensembles, through: :performances
end