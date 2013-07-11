class Product < ActiveRecord::Base
  attr_accessible :description, :name, :price_in_cents, :sku
  validates :description, :presence => true
  validates :name, :presence => true
  validates :price_in_cents, :presence => true
  validates :sku, :presence => true
end
