%w(rubygems sinatra haml sass).each{ |lib| require lib }


configure do
    set :views, "#{File.dirname(__FILE__)}/views"
    set :haml,  { :format    => :html5 }
    enable :sessions
end

configure :development do
    Sinatra::Application.reset!
    use Rack::Reloader

end

helpers do

    def format_message
        message = session[:message] if session[:message]
        "*** #{message} ***"
    end

end

before do

    if session[:message]
        puts "this is the message: #{session[:message]}"
    end

    @message = session[:message]

end


get '/' do
    haml :index
end

post '/' do
    @message = session[:message] = params[:message]
    haml :index
end

get '/message' do
    haml :message
end

get '/kill' do
    session[:message] = nil
    haml :index
end
