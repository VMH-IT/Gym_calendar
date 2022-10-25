class RoupackageSerializer < ActiveModel::Serializer
  attributes  :id,
              :user_id, 
              :name_roupackage, 
              :description,
              :repeat, 
              :date_start, 
              :date_end,
              :status_roupackage
  has_many :route_day, serializer: RouteDaySerializer        
end