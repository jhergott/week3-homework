Place.delete_all

[
{:title => "United Center", :photo_url => "http://upload.wikimedia.org/wikipedia/en/7/7a/United_Center_Interior.jpg", :price => 1500, :description => "The Bulls and Hawks play here!"},
{:title => "Rivers Casino", :photo_url => "http://media-cdn.tripadvisor.com/media/photo-s/03/57/1c/36/rivers-casino.jpg", :price => 100000, :description => "Come here to lose money and play craps."},
{:title => "Buffalo Joes", :photo_url => "https://c1.staticflickr.com/1/134/336598966_4daa739420.jpg", :price => 2000, :description => "Best chicken wings in Chicago."},
{:title => "Navy Pier", :photo_url => "http://parking.chicago.com/wp-content/uploads/2012/06/Navy-Pier-Parking.jpg", :price => 1000, :description => "Fun carnival rides."},
{:title => "North Avenue Beach", :photo_url => "http://upload.wikimedia.org/wikipedia/commons/5/5d/20080704_North_Avenue_Beach.JPG", :price => 100, :description => "The best beach in Chicago"}
].each do |place_hash|
  p = Place.new
  p.title = place_hash[:title]
  p.photo_url = place_hash[:photo_url]
  p.price = place_hash[:price]
  p.description = place_hash[:description]
  p.save
end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
