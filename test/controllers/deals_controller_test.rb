require 'test_helper'

class DealsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get deals_create_url
    assert_response :success
  end

end
