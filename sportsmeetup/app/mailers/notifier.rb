# Application notification mailer for dispatching emails to users when certain events occur
class Notifier < ApplicationMailer
  default from: 'no-reply@sportsmeetup.com'

   def sign(game)
    @game = game
    mail(to: @game.emails, subject: "Hi!")
   end
  def go(game)
    @game = game
    mail(to: @game.emails, subject: "It\'s on!")
  end
  def del(game)
    @game = game
    mail(to: @game.emails, subject: "Game cancelled")
  end
  def stop(game)
    @game = game
    mail(to: @game.emails, subject: "It\'s off.")
  end
  def bye(game, email)
    @game = game
    mail(to: email, subject: "Bye")
  end
end
