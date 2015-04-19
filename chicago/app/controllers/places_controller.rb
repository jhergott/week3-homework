class PlacesController < ApplicationController

  def index
    @places = Place.all
  end

  def show
    @place = Place.find_by(:id => params["id"])
  end

  def delete
    place_to_delete = Place.find_by(:id => params["id"])
    place_to_delete.delete
    redirect_to "/places"
  end

end