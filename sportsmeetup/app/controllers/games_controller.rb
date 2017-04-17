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
       # @game.sign_ups=@game.sign_ups-1
       # @game.save
        #@oldstring = @game.emails
       # @game.exit1(emails: "#{@oldstring}"+"#{game_params[:last_email]}"+",")
    end
    def signup
        @game = Game.find(params[:id])
    end
    def update
        @game = Game.find(params[:id])
        if (params[:commit]=='Sign Up')
            #@game.update(onestring: game_params[:onestring])
            if (@game.password != ""&&@game.password!=nil)
                if @game.password == game_params[:onestring]
                    @game.sign_ups=@game.sign_ups+1
                    @game.save
                    @oldstring = @game.emails
                    @oldnames = @game.twostring
                    @newname = game_params[:full_name]
                    @game.update_attributes(emails: "#{@oldstring}"+"#{game_params[:last_email]}"+",")
                    if (@oldnames==""||@oldnames==nil) 
                        @game.update_attributes(twostring: "#{@newname}")
                    else 
                        @game.update_attributes(twostring: "#{@oldnames}"+"\n"+"#{@newname}") 
                    end
                else
                    redirect_to games_error_path
                end
            else
                @game.sign_ups=@game.sign_ups+1
                @game.save
                @oldstring = @game.emails
                @oldnames = @game.twostring
                @newname = game_params[:full_name]
                @game.update_attributes(emails: "#{@oldstring}"+"#{game_params[:last_email]}"+",")
                if (@oldnames==""||@oldnames==nil) 
                    @game.update_attributes(twostring: "#{@newname}")
                else 
                    @game.update_attributes(twostring: "#{@oldnames}"+"\n"+"#{@newname}") 
                end
            end
            if @game.sign_ups==@game.min
                Notifier.go(@game).deliver 
            end
        elsif (params[:commit]=='Back Out')
            @game = Game.find(params[:id])
            @game.sign_ups=@game.sign_ups-1
            @game.save
            if (@game.sign_ups==(@game.min-1))
                Notifier.stop(@game).deliver 
            end
            redirect_to games_path
        elsif (params[:commit]=='Confirm Changes')
                @game = Game.find params[:id]
                if /[0-9]+/.match(game_params[:max])
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
        if (@game.emails!=""&&@game.emails!=nil)
            Notifier.del(@game).deliver 
        end
        @game.destroy
        flash[:notice] = "#{@game.title} deleted."
        redirect_to games_path
    end
end
