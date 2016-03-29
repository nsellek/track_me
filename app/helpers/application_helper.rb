module ApplicationHelper
  
  def to_grams(pounds)
    pounds * 453.6
  end
  
  def to_pounds(grams)
    pounds = grams * 0.00220462262
    pounds.round(1)
  end
end
