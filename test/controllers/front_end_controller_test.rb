require 'test_helper'

class FrontEndControllerTest < ActionController::TestCase
  test "should get question" do
    get :question
    assert_response :success
  end

  test "should get answer" do
    get :answer
    assert_response :success
  end

end
