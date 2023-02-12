class Piece < ActiveRecord::Base
    has_many :notes
    has_many :performances
    has_many :ensembles, through: :performances
    has_many :concerts, through: :performances
end