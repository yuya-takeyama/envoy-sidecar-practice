require 'sinatra'
require 'open-uri'

get '/' do
  message = open('http://service-bar').read.chomp
  "This is Foo Service!\n" + "Message from Bar Service: #{message}\n"
end
