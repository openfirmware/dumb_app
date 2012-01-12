DumbApp::Application.routes.draw do
  mount proc { |env|
   [200, {}, ["OK"]]
  } => "/api"
end
