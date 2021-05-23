require "test_helper"

class CoveetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @coveet = coveets(:one)
  end

  test "should get index" do
    get coveets_url
    assert_response :success
  end

  test "should get new" do
    get new_coveet_url
    assert_response :success
  end

  test "should create coveet" do
    assert_difference('Coveet.count') do
      post coveets_url, params: { coveet: { cuerpo: @coveet.cuerpo, likes: @coveet.likes, usuario_id: @coveet.usuario_id } }
    end

    assert_redirected_to coveet_url(Coveet.last)
  end

  test "should show coveet" do
    get coveet_url(@coveet)
    assert_response :success
  end

  test "should get edit" do
    get edit_coveet_url(@coveet)
    assert_response :success
  end

  test "should update coveet" do
    patch coveet_url(@coveet), params: { coveet: { cuerpo: @coveet.cuerpo, likes: @coveet.likes, usuario_id: @coveet.usuario_id } }
    assert_redirected_to coveet_url(@coveet)
  end

  test "should destroy coveet" do
    assert_difference('Coveet.count', -1) do
      delete coveet_url(@coveet)
    end

    assert_redirected_to coveets_url
  end
end
