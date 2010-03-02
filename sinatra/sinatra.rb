!SLIDE commandline incremental
# Install that badboy #

    $ sudo gem install sinatra

!SLIDE commandline incremental
# Set up an app #

    $ cd /tmp
    $ mkdir sinazzy && cd sinazzy
    $ touch app.rb
    $ vim app.rb

!SLIDE smaller
# How easy is it?
    @@@ ruby
    require 'rubygems'
    require 'sinatra'

    get '/' do
        'oh you did NOT just make a little website??!!!?!!'
    end



!SLIDE smaller code
# RESTful
    @@@ ruby

    get '/' do
        "Hello World!"
    end
!SLIDE smaller code
# :-(
    @@@ ruby

    delete '/' do
        "Goodbye World!"
    end

!SLIDE smaller code
# POST & PUT Too
    @@@ ruby

    post '/' do
        "Thanks #{params[:name]}"
    end

    put '/change/something' do
        "Changed or something"
    end

!SLIDE smaller commandline incremental
# ruby example/sinazzy.rb #
    $ curl localhost:4567/
    Hello World!
    $ curl -X DELETE localhost:4567/
    Goodby World!
    $ curl -d name=Jesse localhost:4567/name
    Hi there Jesse!
    $ curl -X PUT localhost:4567/change/something
    Changed or something

!SLIDE center
# It's all about Routes #
