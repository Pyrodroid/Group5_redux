class MoviesController < ApplicationController

  def movie_params
    params.require(:movie).permit(:title, :rating, :description, :release_date)
  end

  def show
    id = params[:id] # retrieve movie ID from URI route
    @movie = Movie.find(id) # look up movie by unique ID
    # will render app/views/movies/show.<extension> by default
  end

  def index
    @all_ratings = Movie.get_ratings

    # cheap clone
    fixed_params = Hash.new
    if !(params.empty?)
      fixed_params.merge!(params)
    end

    if params.has_key?(:sort)
      @hl_title = params[:sort] == "title"
      @hl_date = params[:sort] == "date"
      session[:sort] = params[:sort]
    else
      if session.has_key?(:sort)
        fixed_params.merge!(sort: session[:sort])
      else
        @hl_title = @hl_date = false
      end
    end

    if params.has_key?(:ratings)
      @checked_ratings = params[:ratings].keys
      session[:ratings] = params[:ratings]
    else
      if session.has_key?(:ratings)
        fixed_params.merge!(ratings: session[:ratings])
      else
        @checked_ratings = @all_ratings
      end
    end

    # redirect for RESTful preservation or w/e
    if fixed_params != params
      flash.keep
      redirect_to movies_path(fixed_params)
    end

    # probably not 100% ideal since it's extra work if nothing's checked but whatever
    @movies = @hl_title ? Movie.where(rating: @checked_ratings).order(:title) : @hl_date ? Movie.where(rating: @checked_ratings).order(:release_date) : Movie.where(rating: @checked_ratings)
  end

  def new
    # default: render 'new' template
  end

  def create
    @movie = Movie.create!(movie_params)
    flash[:notice] = "#{@movie.title} was successfully created."
    redirect_to movies_path
  end

  def edit
    @movie = Movie.find params[:id]
  end

  def update
    @movie = Movie.find params[:id]
    @movie.update_attributes!(movie_params)
    flash[:notice] = "#{@movie.title} was successfully updated."
    redirect_to movie_path(@movie)
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    flash[:notice] = "Movie '#{@movie.title}' deleted."
    redirect_to movies_path
  end

end
