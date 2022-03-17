class JoinTableItemOrder < ApplicationRecord
  belongs_to :item
  belongs_to :order

  after_create :image_send
  after_create :image_send_adm

  def image_send
    UserMailer.email_image(self).deliver_now
  end

  def image_send_adm
    AdminMailer.email_image_adm(self).deliver_now
  end

end
