$ ->
  $(".placemark").click ->
    text = $(this).data("text")
    lat = $(this).data("lat")
    lon = $(this).data("lon")
    createPlacemark({text: text, latitude: lat, longitude: lon})
    zoom_placemark(lat, lon)
