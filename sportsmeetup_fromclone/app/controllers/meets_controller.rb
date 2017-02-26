class MeetsController < ApplicationController
def meet_params
    params.require(:meets).permit(:title, :sport, :description, :date, :time, :location)
end

  def show
    id = params[:id] # retrieve movie ID from URI route
    @movie = Meet.find(id) # look up movie by unique ID
    # will render app/views/movies/show.<extension> by default
  end 
  
  def meets
    
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
    @meet = Meet.find params[:id]
  end

  def update
    @meet = Meet.find params[:id]
    @meet.update_attributes!(meet_params)
    flash[:notice] = "#{@meet.title} was successfully updated."
    redirect_to meet_path(@meet)
  end

  def destroy
    @meet = Meet.find(params[:id])
    @meet.destroy
    flash[:notice] = "Meet '#{@movie.title}' deleted."
    redirect_to meet_path
  end
end
