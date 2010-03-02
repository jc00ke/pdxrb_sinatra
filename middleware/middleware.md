!SLIDE
# Did I mention... #
## It's built on Rack ##

[http://rack.rubyforge.org](http://rack.rubyforge.org/)

So, you get:
* middleware
* Rack::Test

!SLIDE center
# Middleware #
Apps that change the request or response.
* I::Rack - [from CodeRack competition](http://coderack.org/users/haruki_zaemon/entries/50-irack)
* GsubHelloGoodbye (I just made this up)

!SLIDE incremental
    $ curl localhost:4567/
    hello

    $ curl -i localhost:4567/WMD
    HTTP/1.1 404 Not Found Not Found
    Content-Type: text/plain
    Content-Length: 0
    Connection: keep-alive
    Server: thin 1.2.6 codename Crazy Delicious

    $ curl localhost:4567/hello
    goodbye goodbye goodbye!

!SLIDE
    @@@ ruby
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

!SLIDE
# You can see how I did that in examples/middleware #
