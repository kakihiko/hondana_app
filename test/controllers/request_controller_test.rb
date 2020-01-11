require 'test_helper'

class RequestControllerTest < ActionDispatch::IntegrationTest
  test "should get wish" do
    get request_wish_url
    assert_response :success
  end

  test "should get admit" do
    get request_admit_url
    assert_response :success
  end

end
