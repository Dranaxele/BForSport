require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get accueil" do
    get :accueil
    assert_response :success
  end

  test "should get sports" do
    get :sports
    assert_response :success
  end

  test "should get infos" do
    get :infos
    assert_response :success
  end

  test "should get classement" do
    get :classement
    assert_response :success
  end

end
