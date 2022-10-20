class RouteDay < ApplicationRecord
    belongs_to :route
    has_and_belongs_to_many :exersice, join_table: 'routeday_exercise'
end
