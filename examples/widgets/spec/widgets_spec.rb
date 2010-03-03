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

    end

    context "'/login' route" do

        it 'should have a form' do
            get '/login'
            last_response.should be_ok
            last_response.body.should include("action='/login'")
        end

        it 'should have a legit login form' do
            get '/login'
            last_response.should be_ok
            last_response.body.should have_selector("form[name='login']")
        end

    end
end
