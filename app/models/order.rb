class Order < ApplicationRecord
  STATUS = ['pendente', 'aguardando pagamento', 'pago', 'enviado', 'entregue']

  belongs_to :user, optional: true
  has_many :order_items

  before_save :set_total

  def set_total
    self.total = self.order_items.map { |item| item.product.price * item.quantity }.sum
  end
end
