!SLIDE smaller
# What about Haml? #

    @@@ ruby

    require 'rubygems'
    require 'sinatra'
    require 'haml'

    set :haml,  { :format   => :html5 }

    get '/' do
        haml :index
    end

!SLIDE
:index can either be in (by default) views/ or in-file.

It can also be wherever you want
    @@@ ruby
    set :views, Proc.new{ File.join(root, "over_here") }

!SLIDE center
# Quick Aside #
Other configurations
* :environment
* :sessions
* :root
* :static
* etc (http://www.sinatrarb.com/configuration.html)

!SLIDE smaller

    @@@ ruby
    ...

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

!SLIDE smaller
# Normal layout/template method #
## examples/normal_haml/app.rb ##
    @@@ ruby

    require 'rubygems'
    require 'sinatra'
    require 'haml'
    require 'sass'

    set :haml,  { :format   => :html5 }

    get '/' do
        haml :index
    end

    get '/styles.css' do
        content_type    'text/css', :charset    => 'utf-8'
        sass :styles
    end

!SLIDE smaller
# The Views #
## examples/normal_haml/views/* ##

!SLIDE smaller
# examples/normal_haml/views/layout.haml #
    !!!
    %html
        %head
            %title PDXRB RULES!
            %link{ :rel => :stylesheet, :href => '/styles.css' }
        %body= yield

!SLIDE smaller
# examples/normal_haml/views/index.haml #

    #index
        Um, hi there.

    .explanation
        views/ contains haml &amp; sass files
    .explanation
        public/ has all the static files (just like Rails)

!SLIDE smaller
# examples/normal_haml/views/styles.sass #

    #index
        :background-color   #ccc
        :border             1px solid #666

    .explanation
        :border 2px dashed #f00
        :margin 10px 0
