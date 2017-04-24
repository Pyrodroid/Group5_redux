# Logic controller for handling getting/modifying games
class GamesController < ApplicationController
    def game_params
        params.require(:game).permit(:title, :sport, :location, :time, :min, :max, :sign_ups, :back_out, :back_link, :details, :emails, :last_email, :updated_at, :password, :password_confirmation, :onestring, :twostring, :oneint, :twoint, :onedate, :onetime, :onedatetime, :lat, :long, :full_name)
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
    
    def back_link
        @game = Game.find(params[:id])
    end
    
    def signup
        @game = Game.find(params[:id])
    end

    def update
        @game = Game.find(params[:id])
        @newname = game_params[:full_name]
        @newemail = game_params[:last_email]
        
        commit = params[:commit]
        
        if (commit=='Sign Up')
            password = @game.password
            if (password != ""&&password!=nil)
                if password == game_params[:onestring]
                    Game.sign_up(@game, @newname, @newemail)
                else
                    redirect_to games_error_path
                end
            else
                Game.sign_up(@game, @newname, @newemail)
            end
            
        elsif (commit=='Back Out')
            Game.back_out(@game, @newname, @newemail)
            redirect_to games_path
            
        elsif (commit=='Confirm Changes')
            if /[0-9]+/.match(game_params[:max])&&/[0-9]+/.match(game_params[:min])
            
                @game.update_attributes!(game_params)
                flash[:notice] = "#{@game.title} was successfully updated."
            redirect_to root_path
            else
                redirect_to edit_game_path
                flash[:notice] = "Wrong data type!"
            end
        end
    end
    
    def create
        @game = Game.new(game_params)
        @game.sign_ups=0
        @game.save
        redirect_to @game
    end
    
    def destroy
        @game = Game.find(params[:id])
        emails = @game.emails
        if (emails!=""&&emails!=nil)
            Notifier.del(@game).deliver 
        end
        @game.destroy
        flash[:notice] = "#{@game.title} deleted."
        redirect_to games_path
    end
end
