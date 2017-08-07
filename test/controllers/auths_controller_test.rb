require 'test_helper'

class AuthsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get auths_show_url
    assert_response :success
  end

end
