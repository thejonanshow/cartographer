class MapsController < ApplicationController
  def index
    @placemarks = [] 

    # This code pulls data straight from redis. You probably want to store this
    # in a local database.
    #REDIS.keys[0..100].each do |key|
      #value =  JSON.parse(REDIS.get(key))
      #if value["geo"]
        #coords = value["geo"]["coordinates"]
        #@placemarks << Placemark.new(coords[0], coords[1])
      #end
    #end
   
   
    # Test data
    @placemarks << Placemark.new("@follow me!", 55.61090966, 37.54515409)
    @placemarks << Placemark.new("OH HAI CATS!", 55.77109365, 37.62047052)
  end
end
