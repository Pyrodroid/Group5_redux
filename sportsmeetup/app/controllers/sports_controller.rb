class SportsController < ApplicationController
  def index
    @user = User.all
    @hash = Gmaps4rails.build_markers(@users) do |user, marker|
      marker.lat user.latitude
      marker.lng user.longitude
      marker.infowindow user.description
end
  end
  def find_meet
    
  end
end
