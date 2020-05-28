class AddSeasonToShows < ActiveRecord::Migration[5.2]
  
  def change
    create_table if not EXIST :shows do |s|
      s.string :season 
    end
  end
  
  
end