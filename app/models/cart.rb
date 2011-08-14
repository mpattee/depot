class Cart < ActiveRecord::Base
  has_many :line_items, :depedent => :destroy
end
