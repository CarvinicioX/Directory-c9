require 'test_helper'

class MunicipalitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @municipality = municipalities(:one)
  end

  test "should get index" do
    get municipalities_url
    assert_response :success
  end

  test "should get new" do
    get new_municipality_url
    assert_response :success
  end

  test "should create municipality" do
    assert_difference('Municipality.count') do
      post municipalities_url, params: { municipality: { department_id: @municipality.department_id, name: @municipality.name, num_minicip: @municipality.num_minicip } }
    end

    assert_redirected_to municipality_url(Municipality.last)
  end

  test "should show municipality" do
    get municipality_url(@municipality)
    assert_response :success
  end

  test "should get edit" do
    get edit_municipality_url(@municipality)
    assert_response :success
  end

  test "should update municipality" do
    patch municipality_url(@municipality), params: { municipality: { department_id: @municipality.department_id, name: @municipality.name, num_minicip: @municipality.num_minicip } }
    assert_redirected_to municipality_url(@municipality)
  end

  test "should destroy municipality" do
    assert_difference('Municipality.count', -1) do
      delete municipality_url(@municipality)
    end

    assert_redirected_to municipalities_url
  end
end
