class MapsController < ApplicationController
  def index
    @placemarks = [] 
    REDIS.keys[0..100].each do |key|
      value =  JSON.parse(REDIS.get(key))
      if value["geo"]
        coords = value["geo"]["coordinates"]
        @placemarks << Placemark.new(coords[0], coords[1])
      end
    end
  end
end
