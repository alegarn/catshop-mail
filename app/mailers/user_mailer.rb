class UserMailer < ApplicationMailer

  default from: 'no-reply@catshop-io.fr'


  def welcome_email(user)
    @user = user
    @url = 'https://catshop-io.herokuapp.com/users/sign_in'
    mail(to: @user.email, subject: 'Bienvenue sur CatShop')
  end
end
