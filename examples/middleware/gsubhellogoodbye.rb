require 'rack'

class GsubHelloGoodbye

    def initialize(app)
        @app  = app
    end

    def call(env)
        if env["PATH_INFO"] == '/hello'
            status, headers, response = @app.call(env)
            body = response.first.gsub!(/hello/i, 'goodbye')
            [status, headers, body]
        else
            @app.call(env)
        end
    end

end
