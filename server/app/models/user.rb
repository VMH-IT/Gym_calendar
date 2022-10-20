class User < ApplicationRecord
  devise :database_authenticatable

  attr_accessor :remember_token
  before_save { email.downcase! }

  validates :fname, presence: true, length: { maximum: 50 }
  validates :lname, presence: true, length: { maximum: 50 }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i

  validates :email, presence: true, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX }
  validates :password, presence: true, length: { minimum: 8 } , allow_nil: true
  validates :age, presence: true, numericality: { greater_than: 0, less_than: 100}
  validates :gender, numericality: {only_integer: true, less_than:2, message: "Gender seems wrong"}
  validates :phone , presence: true, numericality: { only_integer: true }, length: { is: 10 }
  validates :weight , :numericality => true
  validates :height , :numericality => true

  has_many :route
  

end
