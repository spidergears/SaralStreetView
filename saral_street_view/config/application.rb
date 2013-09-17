# saral/saral_street_view/config/application.rb
#
require 'saral'
$LOAD_PATH << File.join(File.dirname(__FILE__), "..", "app", "controllers")
require 'courses_controller'
require 'images_controller'
module SaralStreetView
  class Application < Saral::Application
  end
end

