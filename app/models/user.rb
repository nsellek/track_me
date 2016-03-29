class User < ActiveRecord::Base
  has_many :weight_trackers
  has_secure_password
end
