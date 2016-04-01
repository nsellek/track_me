module BodyFatDataPoinsHelper
  
  def find_body_fat_for_men(upper, mid, lower, age)
    (0.29288 x (upper + mid + lower)) – (0.0005 x sqrt(upper + mid + lower)) + (0.15845 x age) – 5.76377
  end
  
  def find_body_fat_for_women(upper, mid, lower, age)
    (0.29669 x (upper + mid + lower)) – (0.00043 x sqrt(upper + mid + lower)) + (0.02963 x age) + 1.4072
  end
end
