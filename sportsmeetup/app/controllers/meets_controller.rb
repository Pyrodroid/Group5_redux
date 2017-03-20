class MeetsController < ApplicationController
def meet_params
    params.require(:game).permit(:title, :sport, :league, :details, :time, :location, :min, :max, :sign_ups, :emails, :last_email)
end

  def show
  end
 
  def new
  end

  def index
    #id = params[:id] # retrieve movie ID from URI route
    @meets= Meet.all
    # will render app/views/movies/show.<extension> by default
  end 
  
  def show
    #id = params[:id] # retrieve movie ID from URI route
    @meet= Meet.find(params[:id])
    # will render app/views/movies/show.<extension> by default
  end 
  
  def meets
    Meet.find :all 
  end

  def new
    # default: render 'new' template
  end

  def create
    @movie = Meet.create!(meet_params)
    flash[:notice] = "#{@meet.title} was successfully proposed."
    redirect_to meet_path
  end

  def edit
    @game = Game.find params[:id]
  end

  def update
    @game = Game.find params[:id]
    @game.update_attributes!(meet_params)
    flash[:notice] = "#{@game.title} was successfully updated."
    redirect_to root_path
  end

  def destroy
    @meet = Meet.find(params[:id])
    @meet.destroy
    flash[:notice] = "Meet '#{@movie.title}' deleted."
    redirect_to meet_path
  end
end
