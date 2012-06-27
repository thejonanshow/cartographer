class Placemark
  attr_accessor :text, :latitude, :longitude

  def initialize(text, latitude, longitude)
    @text = text
    @latitude = latitude
    @longitude = longitude
  end
end
