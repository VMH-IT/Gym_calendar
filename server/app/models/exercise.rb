class Exercise < ApplicationRecord
  # validates :name_exercise, presence: true, length: { maximum: 100 }
  # validates :time_exercise, presence: true
  has_many :route_day_exercise
  has_many :route_day, through: :route_day_exercise
  belongs_to :category
  # has_and_belongs_to_many :route_day, join_table: 'routeday_exercise'
  has_one_attached :image
  attribute :image_url
  after_find :set_image_url
end
