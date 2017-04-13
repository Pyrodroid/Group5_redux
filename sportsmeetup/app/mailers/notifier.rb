class Notifier < ApplicationMailer
  default from: 'no-reply@sportsmeetup.com'

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
end
