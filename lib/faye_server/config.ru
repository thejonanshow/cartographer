require 'faye'
require 'redis'
require 'json'
require 'faraday'

class Debugger
  
  def incoming(msg, callback)
    puts msg
    callback.call(msg)
  end
end


Faye::WebSocket.load_adapter('thin')

faye_server = Faye::RackAdapter.new(:mount => '/faye', :timeout => 45)
faye_server.add_extension(Debugger.new)
run faye_server