class Show < ActiveRecord::Base 
  
  def highest_rating
    shows.ratings.minimum
  end
  
  
end