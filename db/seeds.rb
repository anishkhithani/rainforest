# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.create!(
    :description => "description",
    :name => "Name",
    :price_in_cents => "9999.00",
    :sku => "AB123"
)

Product.create!(
    :description => "2description",
    :name => "2Name",
    :price_in_cents => "8888.00",
    :sku => "CD456"
)
