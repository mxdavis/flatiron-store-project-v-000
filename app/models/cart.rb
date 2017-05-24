class Cart < ActiveRecord::Base
  belongs_to :user
  has_many :line_items
  has_many :items, through: :line_items

  def total
    total = 0
    line_items.collect {|line_item| total += line_item.item.price * line_item.quantity}
    total
  end
end
