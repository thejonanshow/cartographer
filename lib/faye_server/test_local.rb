require 'faye'
require 'eventmachine'

  EM.run {
    client = Faye::Client.new('http://localhost:9000/faye')
    client.publish('/placemarkers', 
              { 'latitude' => rand * 179,
              'longitude' => rand * 179,
              'text' => 'foo'
              })
  }