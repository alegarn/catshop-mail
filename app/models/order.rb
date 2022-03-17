class Order < ApplicationRecord
  has_many :join_table_item_orders
  has_many :items, through: :join_table_item_orders

  belongs_to :user
  validates :user_id, presence: true
  #total of the prices?

  after_create :order_send
  after_create :order_send_adm


  def order_send
    UserMailer.email_order(self).deliver_now
  end

  def order_send_adm
    AdminMailer.email_order_adm(self).deliver_now
  end

end
