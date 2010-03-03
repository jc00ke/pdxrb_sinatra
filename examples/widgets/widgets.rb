%w(rubygems sinatra dm-core haml sass).each{ |lib| require lib }


configure do
    set :views, "#{File.dirname(__FILE__)}/views"
    set :haml,  { :format    => :html5 }
end

configure :development do
    Sinatra::Application.reset!
    use Rack::Reloader

end



get '/' do
    haml :index
end

get '/login' do
    haml :login
end
