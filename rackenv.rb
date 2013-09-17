class Application
  def call(env)
    [200, {"Content-Type" => "Text/Plain"}, ["#{env}"]]
  end
end

Rack::Handler::WEBrick.run Application.new
