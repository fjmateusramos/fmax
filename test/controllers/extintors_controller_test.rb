require 'test_helper'

class ExtintorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @extintor = extintors(:one)
  end

  test "should get index" do
    get extintors_url
    assert_response :success
  end

  test "should get new" do
    get new_extintor_url
    assert_response :success
  end

  test "should create extintor" do
    assert_difference('Extintor.count') do
      post extintors_url, params: { extintor: {  } }
    end

    assert_redirected_to extintor_url(Extintor.last)
  end

  test "should show extintor" do
    get extintor_url(@extintor)
    assert_response :success
  end

  test "should get edit" do
    get edit_extintor_url(@extintor)
    assert_response :success
  end

  test "should update extintor" do
    patch extintor_url(@extintor), params: { extintor: {  } }
    assert_redirected_to extintor_url(@extintor)
  end

  test "should destroy extintor" do
    assert_difference('Extintor.count', -1) do
      delete extintor_url(@extintor)
    end

    assert_redirected_to extintors_url
  end
end
