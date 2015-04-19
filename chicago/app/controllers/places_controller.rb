class PlacesController < ApplicationController

  def new
    # do nothing
  end

  def edit
    @place_to_edit = Place.find_by(:id => params["id"])
  end

  def update
    place_update = Place.find_by(:id => params["id"])
    place_update.title = params["title"]
    place_update.photo_url = params["url"]
    place_update.price = params["price"].to_i
    place_update.description = params["description"]
    place_update.save
    redirect_to "/places/#{place_update.id}"
  end

  def create
    title = params["title"]
    url = params["url"]
    price = params["price"].to_i
    description = params["description"]
    Place.create(title: title, photo_url: url, price: price, description: description)
    redirect_to "/places"
  end

  def index
    @places = Place.all
  end

  def show
    @place = Place.find_by(:id => params["id"])
    @reviews = Review.where(:place_id => @place.id)
    @reviews = @reviews.order("id desc")
  end

  def delete
    place_to_delete = Place.find_by(:id => params["id"])
    place_to_delete.delete
    redirect_to "/places"
  end

  def review
    title = params["title"]
    rating = params["rating"].to_i
    description = params["description"]
    place_id = params["id"]
    Review.create(title: title, rating: rating, description: description, place_id: place_id)
    redirect_to "/places/#{place_id}"
  end

end