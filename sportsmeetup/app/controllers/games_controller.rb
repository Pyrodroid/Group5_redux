class GamesController < ApplicationController
    def game_params
        params.require(:game).permit(:title, :sport, :location, :time, :min, :max, :sign_ups, :back_out,
         :details, :emails)
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
                @game.sign_ups=@game.sign_ups+1
                #@game.emails=@game.emails+("#{game_params.emails}")
                @game.save
                
    end
    def update
        @game = Game.find(params[:id])
        @oldstring = @game.emails
        @game.update(emails: @oldstring+" "+game_params[:emails])
    end
    
    def signup
        @game.sign_ups+=1
    end
    
    def back_out
        @game.back_out-=1
    end
    
    def create
        @game = Game.new(game_params)
        @game.sign_ups=0
        redirect_to @game
    end
end
