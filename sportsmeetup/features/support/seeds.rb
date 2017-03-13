# Feel free to seed empty quotes with whatever you'd like

# id			unique key for meet
# name			name of the meet
# league		league associated with (nil for now but consider default league?)
# sport			sport being played (nil for now but consider default sport?)
# datetime		unix timestamp of time meet
#				(potentially easiest to convert to user's current timezone)
# location		physical location name of meet
# lat			latitude (from/for google maps API?)
# lng			longitude (from/for google maps API?)
# info			additional info of meet

games = [
        {
                :title => 'Frizbee1', :league => 0, :sport => nil,
				:max => 3, :min => 3, :sign_ups => 3,
                :time => 0, :location => '', #:lat => 0, :lng => 0,
                :details => ''
        },
        {
                :title => 'Fencing', :league => 0, :sport => nil,
				:max => 15, :min => 7, :sign_ups => 10,
                :time => 0, :location => '', #:lat => 0, :lng => 0,
                :details => ''
        },
        {
                :title => 'Frizzzbee', :league => 0, :sport => nil,
				:max => 10, :min => 3, :sign_ups => 10,
                :time => 0, :location => '', #:lat => 0, :lng => 0,
                :details => ''
        },
        {
                :title => 'More fencing', :league => 0, :sport => nil,
				:max => 15, :min => 7, :sign_ups => 5,
                :time => 0, :location => '', #:lat => 0, :lng => 0,
                :details => ''
        },
]

games.each do |game|
	Game.create! game
end

# Leagues LU, has default league for now
#leagues = [
#	{ :id => 0, :name => 'Casual' }
#]

#leagues.each do |league|
#	League.create! league
#end


# LU for sign-ups. id not unique, use by select id where
#sign_ups = [
#	{:id => 0, :person_first_name => '', :person_last_name => ''},
#	{:id => 0, :person_first_name => '', :person_last_name => ''},
#	{:id => 0, :person_first_name => '', :person_last_name => ''},
#	{:id => 3, :person_first_name => '', :person_last_name => ''}
#]

#sign_ups each do |sign_up|
#	SignUp.create! sign_up
#end

# At some point, may need a logins table

