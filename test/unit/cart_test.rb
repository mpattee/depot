require 'test_helper'

class CartTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
  
  test "cart line item should save price" do
    cart = carts(:one)
    assert cart.save
  end
  
  test "add two products with one line items" do
    cart = carts(:one)
    product = products(:ruby)
    line = cart.add_product(product.id)
    assert line.save
    line = cart.add_product(product.id)
    assert line.save
    assert_equal 1, cart.line_items.count
  end
  
end
