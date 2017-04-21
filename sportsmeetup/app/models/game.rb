class Game < ActiveRecord::Base
   def self.sign_up(game, new_name, new_email)
        game.update_attributes(oneint: 0) 
       #if/^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,}$/.match("#{new_email}")
        @oldnames=game.twostring
        @oldemails=game.emails
        @game=game
        @game.update_attributes(emails: "#{@oldemails}"+"#{new_email}"+",")
            if (@oldnames!=""&&@oldnames!=nil)
                @game.update_attributes(twostring: "#{@oldnames}"+"\n"+"#{new_name}")
            else
                @game.update_attributes(twostring: "#{new_name}")
            end
            @game.sign_ups=game.sign_ups+1
            @game.save
            if @game.sign_ups==@game.min
                    Notifier.go(@game).deliver 
                else
                    Notifier.sign(@game).deliver 
            end
        #else
          #game.update_attributes(oneint: 1)  
        #end
   end
end
