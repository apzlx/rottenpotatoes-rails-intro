class Movie < ActiveRecord::Base
  def self.all_ratings
    return ['G','R','PG','PG-13']
  end

  def self.with_ratings(ratings_list)
    # if ratings_list is an array such as ['G', 'PG', 'R'], retrieve all
    #  movies with those ratings
    # if ratings_list is nil, retrieve ALL movies
    if ratings_list == nil
      return Movie.where("rating":['G','R','PG','PG-13'])
    else
      return Movie.where("rating":ratings_list)
    end
  end
end
