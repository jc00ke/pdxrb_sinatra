require 'rack'

module I

  class Rack

    def initialize(app)
      @app = app
    end

    def call(env)
      if env["PATH_INFO"] == "/WMD"
        ["404 Not Found", {"Content-Type" => "text/plain", "Content-Length" => "0"}, []]
      else
        @app.call(env)
      end
    end

  end

end
