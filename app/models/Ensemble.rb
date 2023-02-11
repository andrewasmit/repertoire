class Ensemble < ActiveRecord::Base
    has_many :performances
    has_many :pieces, through: :performances
end