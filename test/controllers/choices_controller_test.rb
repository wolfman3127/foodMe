require 'test_helper'

class ChoicesControllerTest < ActionDispatch::IntegrationTest
  test "should get choose" do
    get choices_choose_url
    assert_response :success
  end

end
