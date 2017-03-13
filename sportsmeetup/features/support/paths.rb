module NavigationHelpers
  def path_to(page_name)
    case page_name
    when /dashboard/
      sports_path
    when /create a meet/
      games_new_path
    when /find a meet/
      games_path
<<<<<<< HEAD
    when /sign_up/
      edit_game_path(1) 
=======
    when /meet details/
      games_meet_details_path
>>>>>>> 65e2c6e0ff9f7813b8b2385b970d02bb1c446f52
    else
      begin
        page_name =~ /the (.*) page/
        path_components = $1.split(/\s+/)
        self.send (path_components.push('path').join('_').to_sym)
      rescue Object => e
        raise "can't find mapping from \"#{page_name}\" to a path. \n" + "Now go add a mapping in #{__FILE__}"
      end
    end
  end
end

World(NavigationHelpers)
