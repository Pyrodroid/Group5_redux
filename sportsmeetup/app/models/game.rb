# Model for a game (aka meet-up, aka get-together, etc)
# Contains the specific methods for adding or removing a person from a game
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
                    Notifier.go(@game).deliver_now
                else
                    Notifier.sign(@game).deliver_now
            end
        #else
          #game.update_attributes(oneint: 1)  
        #end
   end
   def self.back_out(game, name, email)
       @game=game
        @game.sign_ups=@game.sign_ups-1
        @game.save
        alist="#{@game.twostring}"
        if alist.include? "#{name}"
            alist.slice!("#{name}\n")
            @game.update_attributes(twostring: "#{alist}")
        end
        list="#{@game.emails}"
        if list.include? "#{email}"
            list.slice!("#{email},")
            @game.update_attributes(emails: "#{list}")
        end
        if @game.sign_ups==@game.min-1
            Notifier.stop(@game).deliver_now
        end
            Notifier.bye(@game, email).deliver_now
   end
end
