#!/usr/bin/ruby -I lib

require 'rktman'
require 'pp'

api = RktMan::Connection.new

api.images.each do |image|
    puts "===== #{image.name} ======"
    pp image.raw
    pp image.settings
end
