class CreateShows < ActiveRecord::Base 
  def change 
    create_table :shows do |s|
      s.string :name 
      s.string :network
      s.string :day 
      s.rating :integer 
      s.timestamp
    end
  end
end