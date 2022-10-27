class RouteDay < ApplicationRecord
  has_many :route_day_exercise
  has_many :exercise, :through => :route_day_exercise
  belongs_to :roupackage
  # has_and_belongs_to_many :exersice, join_table: 'routeday_exercise'
end
