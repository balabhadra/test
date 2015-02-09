class Product < ActiveRecord::Base
  validates :name, presence: true, length: {minimum: 2}
  validates :description, presence: true, length: {in: 10..500}
  validates :price, presence: true, numericality: true
  
  HELLO = 500
  
  # Rails version < 4.1
  # STATUSES = [STATUS_READY = 'ready', STATUS_CART = 'cart', STATUS_SOLD = 'sold']
  # validates :status, inclusion: {in: STATUSES}
  
  #Rails version >= 4.1
  enum status: [ :ready, :cart, :sold ]

  def discounted_price(discount)
    if(!discount.is_a?(Numeric) || discount < 0 || discount > 100)
      return nil
    end
    price - price*discount/100
  end
end
