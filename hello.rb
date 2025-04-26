require 'webrick'

server = WEBrick::HTTPServer.new(
  Port: 3000,
  DocumentRoot: Dir.pwd
)

server.mount_proc '/' do |req, res|
  res.body = 'Hello, World!'
end

trap('INT') { server.shutdown }

server.start