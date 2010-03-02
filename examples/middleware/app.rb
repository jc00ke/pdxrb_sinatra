require 'sinatra/base'
require 'irack'
require 'gsubhellogoodbye'

class Middleware < Sinatra::Base
    use I::Rack
    use GsubHelloGoodbye

    get '/' do
        "hello"
    end

    get '/hello' do
        "hello hello HELLO!"
    end

end
