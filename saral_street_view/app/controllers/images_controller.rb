# images_controller.rb
#
require 'nokogiri'
require 'open-uri'
class ImagesController < Saral::Controller
  def display args
    doc = Nokogiri::XML(open("http://maps.googleapis.com/maps/api/geocode/xml?address=#{args}&sensor=true"))
    lng = doc.at_xpath("/GeocodeResponse/result/geometry/location/lng/text()").to_s.to_f
    lat = doc.at_xpath("/GeocodeResponse/result/geometry/location/lat/text()").to_s.to_f
    p lat, lng
    "<h1>Image at your Location</h1><img src= \"http://maps.googleapis.com/maps/api/streetview?size=400x400&location=#{lat},%20#{lng}&fov=90&heading=235&pitch=10&sensor=false\">"
  end
end
