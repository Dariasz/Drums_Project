require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get em" do
    get pages_em_url
    assert_response :success
  end

end
