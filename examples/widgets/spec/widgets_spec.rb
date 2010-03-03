require File.dirname(__FILE__) + '/spec_helper'

describe 'Widgets App' do

    def app
        @app ||= Sinatra::Application
    end

    context "'/' route" do

        it 'should respond successfully' do
            get '/'
            last_response.should be_ok
        end

    end
end
