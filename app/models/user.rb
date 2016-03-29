class User < ActiveRecord::Base
  has_many :weight_data_points
  has_secure_password
end
