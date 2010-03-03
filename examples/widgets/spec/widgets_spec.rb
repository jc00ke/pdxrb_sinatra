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

        it 'should have a home link' do
            get '/'
            last_response.should be_ok
            last_response.body.should contain 'Home'
        end

        it 'should have a message form' do
            get '/'
            last_response.should be_ok
            last_response.body.should have_selector("form[name='message']")
        end

        it 'should accept a POST' do
            post    '/',
                    "message"   => "yo dawg"
            last_response.should be_ok
            last_response.should contain("yo dawg")
       end

    end

    context "'/message' route" do

        it 'should have the formatted message' do
            get '/message'
            last_response.should be_ok
            last_response.body.should contain("***")
        end

        it 'should kill the message' do
            get '/kill'
            last_response.should be_ok
            last_response.should_not have_selector("#message")
        end

    end
end
