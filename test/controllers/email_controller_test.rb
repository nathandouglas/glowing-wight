require 'test_helper'

class EmailControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create a user" do
    post :create, { user: { :firstname => "John", :emailaddress => "" }, email: { :body => "hello" }}
    assert_redirected_to root_path
  end
end
