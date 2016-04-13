module BodyFatDataPoinsHelper
  
  def find_body_fat_for_men(upper, mid, lower, age)
    (0.29288 * (upper + mid + lower)) - (0.0005 * Math.sqrt(upper + mid + lower)) + (0.15845 * age) - 5.76377
  end
  
  def find_body_fat_for_women(upper, mid, lower, age)
    (0.29669 * (upper + mid + lower)) - (0.00043 * Math.sqrt(upper + mid + lower)) + (0.02963 * age) + 1.4072
  end
end
