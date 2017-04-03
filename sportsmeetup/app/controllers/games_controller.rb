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
        #@game.update(onestring: game_params[:onestring])
        if @game.password != ""
            if @game.password == game_params[:onestring]
                @game.sign_ups=@game.sign_ups+1
                @game.save
                @oldstring = @game.emails
                @game.update(emails: "#{@oldstring}"+" "+"#{game_params[:last_email]}")
            else
	        #flash.now[:error] = "Incorrect password"
                
                redirect_to games_error_path
            end
        else
            @game.sign_ups=@game.sign_ups+1
            @game.save
            @oldstring = @game.emails
            @game.update(emails: "#{@oldstring}"+" "+"#{game_params[:last_email]}")
        end
    end
    
    def back_out
       
    end
    
    def create
        @game = Game.new(game_params)
        @game.sign_ups=0
        @game.save
        redirect_to @game
    end
    def destroy
        @game = Game.find(params[:id])
        @game.destroy
        flash[:notice] = "#{@game.title}' deleted."
        redirect_to games_path
    end
    def verify_pw
        if @game.password == ""
            return true
        else
            if @game.password == @game.onestring
                return true
            else
                return false
            end
        end
    end
end
