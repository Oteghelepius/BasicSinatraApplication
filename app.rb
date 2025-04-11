require 'sinatra'

set :bind, '0.0.0.0' 

get '/' do
  "Hello, Sinatra!"
end

# Introduce a random delay before starting the app
sleep(rand(5))

# Start the Sinatra server
#run! if __FILE__ == $0
