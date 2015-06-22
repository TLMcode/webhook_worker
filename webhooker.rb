require_relative 'bundle/bundler/setup'
require 'rest-client'

urls = [
    'http://requestb.in/yzd6l0yz',
    'http://requestb.in/1ha0srv1'
]

urls.each do |u|
  puts "Posting to #{u}..."
  RestClient.post u, :param1 => 'one'
end
