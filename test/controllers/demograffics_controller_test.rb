require 'test_helper'

class DemografficsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @demograffic = demograffics(:one)
  end

  test "should get index" do
    get demograffics_url
    assert_response :success
  end

  test "should get new" do
    get new_demograffic_url
    assert_response :success
  end

  test "should create demograffic" do
    assert_difference('Demograffic.count') do
      post demograffics_url, params: { demograffic: { age: @demograffic.age, name: @demograffic.name } }
    end

    assert_redirected_to demograffic_url(Demograffic.last)
  end

  test "should show demograffic" do
    get demograffic_url(@demograffic)
    assert_response :success
  end

  test "should get edit" do
    get edit_demograffic_url(@demograffic)
    assert_response :success
  end

  test "should update demograffic" do
    patch demograffic_url(@demograffic), params: { demograffic: { age: @demograffic.age, name: @demograffic.name } }
    assert_redirected_to demograffic_url(@demograffic)
  end

  test "should destroy demograffic" do
    assert_difference('Demograffic.count', -1) do
      delete demograffic_url(@demograffic)
    end

    assert_redirected_to demograffics_url
  end
end
