$ ->
  $(".placemark").click ->
    lat = $(this).data("lat")
    lon = $(this).data("lon")
    zoom_placemark(lat, lon)
