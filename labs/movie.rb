class Movie
  def name
    @name
  end

  def name=(mov_name)
    @name=mov_name
  end
  def length
    @length
  end

  def length=(mov_length)
    @length=mov_length
  end

  def year
    @year
  end

  def year=(mov_year)
    @year=mov_year
  end

  def rating
    @rating
  end

  def rating=(mov_rating)
    @rating=mov_rating
  end

  def play
    @play
  end

  def play (movie_name, movie_length, movie_year, movie_rating)
    puts "Playing " + margin_call.name + "runs " + movie_l.length + "minutes and its year is " + movie_y.year + "with rating " + movie_r.r + "."
  end

end

movie=Movie.new
margin_call=Movie.new
margin_call.name='Margin Call'
margin_call.name

movie_length=Movie.new
movie_l.length = 107
movie_l.length

movie_y=Movie.new
movie_y.year = 2011
movie_y.year

movie_r=Movie.new
movie_r.rating=4
movie_r.rating



play

end
