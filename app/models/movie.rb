class Movie < ActiveRecord::Base
  def self.all_ratings
    %w(G PG PG-13 NC-17 R)
  end

  def self.similar_director(director)
    Movie.where(director: director)
  end
  
  def self.filter_and_sort(filtered_ratings, sort_order)
    where(rating: filtered_ratings).order(sort_order)
  end
end
