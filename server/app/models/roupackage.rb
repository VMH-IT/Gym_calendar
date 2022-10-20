class Roupackage < ApplicationRecord
    belongs_to :user
    has_many :route_day
end
