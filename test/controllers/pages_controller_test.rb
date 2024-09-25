require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get testingTailwindCSS" do
    get pages_testingTailwindCSS_url
    assert_response :success
  end
end
