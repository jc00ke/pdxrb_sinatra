require 'rubygems'
require 'sinatra'
require 'haml'

set :haml,  { :format   => :html5 }

get '/' do
    haml :index
end

__END__

@@ layout
!!!
%html
    %head
        %title PDXRB RULES!
    %body= yield

@@ index
#index
    Um, hi there.
