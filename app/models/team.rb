class Team < ActiveRecord::Base
    has_many :player
    has_many :coach
end