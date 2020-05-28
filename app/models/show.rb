class Show < ActiveRecord::Base 
  
  def self.highest_rating
    Show.maximum("rating")
  end
  
  def self.most_popular_show
    Show.order('rating DESC').first
  end
  
  def lowest_rating
    Show.minimum("rating")
  end
  
  def least_popular_show
    Show.order('rating ASC').first
  end
  
  def ratings_sum
    Show.sum(:rating)
  end
  
  def self.popular_shows
    Show.where('rating>5')
  end
  
  def shows_by_alphabetical_order
    Show.order('name ASC')
  
end