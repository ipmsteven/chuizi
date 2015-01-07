require_relative "test_helper"

class TestApp < Chuizi::Application
end

class ChuiziAppTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    TestApp.new
  end

  def test_request__get
    get '/'

    assert last_response.ok?
    body = last_response.body

    assert body["Hello"]
  end

  def test_request__post
    post '/'

    assert last_response.ok?
    body = last_response.body

    assert body["Hello"]
  end
end
