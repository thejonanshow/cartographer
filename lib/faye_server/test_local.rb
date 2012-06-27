require 'net/http'
require 'uri'
require 'json'

  while true
    foo = gets.chomp
    Net::HTTP.post_form(URI.parse('http://localhost:9000/faye'), :message => { 
              'channel' => "/placemarkers",
              data: {
              'latitude' => rand * 179,
              'longitude' => rand * 179,
              'text' => foo }
              }.to_json ) 
  end