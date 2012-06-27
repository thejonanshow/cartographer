$ ->
  $(".placemark").click ->
    lat = $(this).data("lat")
    lon = $(this).data("lon")
    createPlacemark({latitude: lat, longitude: lon})
    zoom_placemark(lat, lon)
