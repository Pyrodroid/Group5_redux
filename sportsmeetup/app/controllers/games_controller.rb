class GamesController < ApplicationController
    def game_params
        params.require(:game).permit(:title, :sport, :location, :time, :min, :max, :sign_ups, :details, :emails)
    end
    def index
        @games = Game.all
    end
    def show
        @game = Game.find(params[:id])
    end
    def new
    end
    def edit
        @game = Game.find(params[:id])
        @game.sign_ups+=1
    end
    def create
        @game = Game.new(game_params)
        @game.sign_ups=0
        @game.save
        redirect_to @game
    end
end
