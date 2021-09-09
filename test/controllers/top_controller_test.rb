require "test_helper"

class TopControllerTest < ActionDispatch::IntegrationTest
  test "indexが取得できること" do
    get root_url
    assert_response :success
  end
end
