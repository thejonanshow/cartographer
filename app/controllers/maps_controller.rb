class MapsController < ApplicationController
  def index
    @placemarks = [] 
    #REDIS.keys[0..100].each do |key|
      #value =  JSON.parse(REDIS.get(key))
      #if value["geo"]
        #coords = value["geo"]["coordinates"]
        #@placemarks << Placemark.new(coords[0], coords[1])
      #end
    #end
    @placemarks << Placemark.new(55.61090966, 37.54515409)
    @placemarks << Placemark.new(55.77109365, 37.62047052)
  end
end
