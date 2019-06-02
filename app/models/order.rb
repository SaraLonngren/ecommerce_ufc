class Order < ApplicationRecord
  STATUS = ['pendente', 'aguardando pagamento', 'pago', 'enviado', 'entregue']

  belongs_to :user, optional: true
  has_many :order_items, dependent: :destroy

  before_save :set_total
  before_create :set_initial_status

  def set_total
    self.total = self.order_items.map { |item| item.product.price * item.quantity }.sum
  end

  def set_initial_status
    if self.status.nil?
      self.status = "pendente"
    end
  end
end
