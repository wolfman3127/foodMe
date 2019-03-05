require 'test_helper'

class AddemailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @addemail = addemails(:one)
  end

  test "should get index" do
    get addemails_url
    assert_response :success
  end

  test "should get new" do
    get new_addemail_url
    assert_response :success
  end

  test "should create addemail" do
    assert_difference('Addemail.count') do
      post addemails_url, params: { addemail: { currentemail: @addemail.currentemail, extraemail: @addemail.extraemail } }
    end

    assert_redirected_to addemail_url(Addemail.last)
  end

  test "should show addemail" do
    get addemail_url(@addemail)
    assert_response :success
  end

  test "should get edit" do
    get edit_addemail_url(@addemail)
    assert_response :success
  end

  test "should update addemail" do
    patch addemail_url(@addemail), params: { addemail: { currentemail: @addemail.currentemail, extraemail: @addemail.extraemail } }
    assert_redirected_to addemail_url(@addemail)
  end

  test "should destroy addemail" do
    assert_difference('Addemail.count', -1) do
      delete addemail_url(@addemail)
    end

    assert_redirected_to addemails_url
  end
end
