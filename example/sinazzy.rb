require 'rubygems'
require 'sinatra'


get '/' do
    "Hello World!"
end

delete '/' do
    "Goodbye World!"
end

post '/name' do
    "Hi there #{params[:name]}!"
end

put '/change/something' do
    "Changed or something"
end
