class GameMailer < ActionMailer::Base
     default from: "altaeg@gmail.com"
        layout 'mailer' 
    def game_email(game)
        mail(to: game.last_email, subject: 'It\'s on!')
    end

end
