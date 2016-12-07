require 'test_helper'

class PollingStationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @polling_station = polling_stations(:one)
  end

  test "should get index" do
    get polling_stations_url
    assert_response :success
  end

  test "should get new" do
    get new_polling_station_url
    assert_response :success
  end

  test "should create polling_station" do
    assert_difference('PollingStation.count') do
      post polling_stations_url, params: { polling_station: { name: @polling_station.name, num_pollstat: @polling_station.num_pollstat, sub_sector_id: @polling_station.sub_sector_id } }
    end

    assert_redirected_to polling_station_url(PollingStation.last)
  end

  test "should show polling_station" do
    get polling_station_url(@polling_station)
    assert_response :success
  end

  test "should get edit" do
    get edit_polling_station_url(@polling_station)
    assert_response :success
  end

  test "should update polling_station" do
    patch polling_station_url(@polling_station), params: { polling_station: { name: @polling_station.name, num_pollstat: @polling_station.num_pollstat, sub_sector_id: @polling_station.sub_sector_id } }
    assert_redirected_to polling_station_url(@polling_station)
  end

  test "should destroy polling_station" do
    assert_difference('PollingStation.count', -1) do
      delete polling_station_url(@polling_station)
    end

    assert_redirected_to polling_stations_url
  end
end
