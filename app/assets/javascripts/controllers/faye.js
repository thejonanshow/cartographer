var client = new Faye.Client('http://localhost:9000/faye');

client.subscribe('/placemarkers', function(message) {
  console.log('Text: ' + message.text);
  console.log('Latitude: ' + message.latitude);
  console.log('Longitude: ' + message.longitude);
  createPlacemark({text: message.text, latitude: message.latitude, longitude: message.longitude})
  zoom_placemark(message.latitude, message.longitude)
});