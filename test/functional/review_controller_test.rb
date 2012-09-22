require 'test_helper'

class ReviewControllerTest < ActionController::TestCase
  test "should get baton_id:integer" do
    get :baton_id:integer
    assert_response :success
  end

  test "should get content:text" do
    get :content:text
    assert_response :success
  end

end
