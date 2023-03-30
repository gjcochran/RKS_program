require File.dirname(__FILE__) + '/../main'
require 'rack/test'

set :environment, :test

RSpec.describe 'The HelloWorld App' do
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  context 'get "/Cochran/Garrett"' do
    before  { get '/Cochran/Garrett' }
    specify { expect(last_response).to be_ok }
    specify { expect(last_response.body).to include "Garrett Cochran's username is gcochran" }
  end

  context 'get "/Cochran/Garrett/James"' do
    before  { get '/Cochran/Garrett/James' }
    specify { expect(last_response).to be_ok }
    specify { expect(last_response.body).to include "Garrett James Cochran's username is gjcochran" }
  end

  context 'get "/Matsumoto/Yukihiro"' do
    before  { get '/Matsumoto/Yukihiro' }
    specify { expect(last_response).to be_ok }
    specify { expect(last_response.body).to include "Yukihiro Matsumoto's username is ymatsu" }
  end
end
