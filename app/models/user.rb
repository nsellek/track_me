class User < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :gender, presence: true
  
  has_many :weight_data_points, dependent: :destroy
  has_many :body_fat_data_points, dependent: :destroy
  has_secure_password
end
