%w(rubygems sinatra dm-core haml sass).each{ |lib| require lib }

configure :development do
    Sinatra::Application.reset!
    use Rack::Reloader

end



get '/' do

end
