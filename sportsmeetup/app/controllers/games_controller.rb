class GamesController < ApplicationController
    def game_params
        params.require(:game).permit(:title, :sport, :location, :time, :min, :max, :sign_ups, :back_out,
         :details, :emails, :last_email, :updated_at, :password, :password_confirmation, :onestring, :twostring, :oneint, :twoint, :onedate, :onetime, :onedatetime, :lat, :long)
    end
    def index
        @games = Game.all
    end
    def show
        @game = Game.find(params[:id])
    end
    
    def edit
        @game = Game.find(params[:id])
    end
    def meet_details
        @game = Game.find(params[:id])
    end
    def update
        @game = Game.find(params[:id])
        @game.sign_ups=@game.sign_ups+1
        @game.save
        @oldstring = @game.emails
        @game.update(emails: "#{@oldstring}"+" "+"#{game_params[:last_email]}")
    end
    
    def signup
        @game.sign_ups+=1
    end
    
    def back_out
        @game.sign_ups-=1
    end
    
    def create
        @game = Game.new(game_params)
        @game.sign_ups=0
        redirect_to @game
    end
    def destroy
        @game = Game.find(params[:id])
        @game.delete
        redirect_to games_path
    end
end
