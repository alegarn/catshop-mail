class AdminMailer < ApplicationMailer
  default from: 'reygner0224@gmail.com'

  def email_order_adm(order)
    @order = order
    @amount = order.total
    @user = order.user
    @url = 'https://catshop-io.herokuapp.com/'
    mail(to: User.where("is_admin = true"), subject: 'Order on CatShop')
  end

  def email_image_adm(joinorder)
    @order = joinorder
    @user = joinorder.order.user
    @item = joinorder.item
    @image_url = joinorder.item.image_url
    @url = 'https://catshop-io.herokuapp.com/'
    mail(to: User.where("is_admin = true"), subject: 'Order on CatShop')
  end
end
