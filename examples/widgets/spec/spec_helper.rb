# loading the app

project_root    = File.expand_path(File.join(File.dirname(__FILE__), '..'))

%w( rubygems
    sinatra
    rack/test
    pp
    webrat
    spec
    spec/autorun
    spec/interop/test).each{ |lib| require lib }

require File.join(project_root, 'widgets')

set :environment,   :test
set :run,           false
set :raise_errors,  true
set :logging,       false

Spec::Runner.configure do |conf|
    conf.include Rack::Test::Methods
    conf.include Webrat::Matchers
end
