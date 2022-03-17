class UserMailer < ApplicationMailer
  default from: 'reygner0224@gmail.com'


  def welcome_email(user)
    @user = user
    @url = 'https://catshop-io.herokuapp.com/users/sign_in'
    mail(to: @user.email, subject: 'Welcome to CatShop')
  end

  def email_order(user)
    @cart = user.cart
    @amount = @cart.total
    @user = user
    @url = 'https://catshop-io.herokuapp.com/'
    mail(to: @user.email, subject: 'Order on CatShop')
  end
end
