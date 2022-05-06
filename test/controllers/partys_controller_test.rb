require 'test_helper'

class PartysControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get partys_new_url
    assert_response :success
  end

end
