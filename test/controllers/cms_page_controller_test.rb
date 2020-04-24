require 'test_helper'

class CmsPageControllerTest < ActionDispatch::IntegrationTest
  test "should get page" do
    get cms_page_page_url
    assert_response :success
  end

end
