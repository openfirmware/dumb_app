DumbApp::Application.routes.draw do
  mount Rack::Builder.new {
    use Rack::Throttle::Interval, :min => 1.0
    run proc { |env|
      [200, {}, ["OK"]]
    }
  } => "/api"
end
