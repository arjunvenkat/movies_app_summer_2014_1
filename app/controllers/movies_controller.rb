class MoviesController < ApplicationController

  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find_by(id: params[:id])
  end

  def new
  end

  def create
    @movie = Movie.new
    @movie.director_id = params[:director_id]
    @movie.title = params[:title]
    @movie.image_url = params[:image_url]
    @movie.description = params[:description]
    @movie.date = params[:date]

    if @movie.save
      redirect_to "/movies/#{ @movie.id }"
    else
      render 'new'
    end
  end

  def edit
    @movie = Movie.find_by(id: params[:id])
  end

  def update
    @movie = Movie.find_by(id: params[:id])
    @movie.director_id = params[:director_id]
    @movie.title = params[:title]
    @movie.image_url = params[:image_url]
    @movie.description = params[:description]
    @movie.date = params[:date]

    if @movie.save
      redirect_to "/movies/#{ @movie.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @movie = Movie.find_by(id: params[:id])
    @movie.destroy


    redirect_to "/movies"
  end
end
