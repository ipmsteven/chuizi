require_relative "test_helper"

class TestController < Chuizi::Controller
  def index
    "Hello!"
  end
end

class TestApp < Chuizi::Application
  def get_controller_and_action(env)
    [TestController, "index"]
  end
end

class ChuiziAppTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    TestApp.new
  end

  def test_request
    get "/example/route"
    assert last_response.ok?
    body = last_response.body
    assert body["Hello"]
  end
end
