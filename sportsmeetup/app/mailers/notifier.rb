class Notifier < ApplicationMailer
  default from: 'no-reply@sportsmeetup.com'

  def go(game)
    @game = game
    mail(to: @game.emails, subject: "It\'s on!")
  end
end
