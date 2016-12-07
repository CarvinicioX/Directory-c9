require 'test_helper'

class MersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mer = mers(:one)
  end

  test "should get index" do
    get mers_url
    assert_response :success
  end

  test "should get new" do
    get new_mer_url
    assert_response :success
  end

  test "should create mer" do
    assert_difference('Mer.count') do
      post mers_url, params: { mer: { name: @mer.name, num_mer: @mer.num_mer, polling_station_id: @mer.polling_station_id } }
    end

    assert_redirected_to mer_url(Mer.last)
  end

  test "should show mer" do
    get mer_url(@mer)
    assert_response :success
  end

  test "should get edit" do
    get edit_mer_url(@mer)
    assert_response :success
  end

  test "should update mer" do
    patch mer_url(@mer), params: { mer: { name: @mer.name, num_mer: @mer.num_mer, polling_station_id: @mer.polling_station_id } }
    assert_redirected_to mer_url(@mer)
  end

  test "should destroy mer" do
    assert_difference('Mer.count', -1) do
      delete mer_url(@mer)
    end

    assert_redirected_to mers_url
  end
end
