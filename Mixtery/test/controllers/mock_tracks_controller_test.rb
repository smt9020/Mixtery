require 'test_helper'

class MockTracksControllerTest < ActionController::TestCase
  setup do
    @mock_track = mock_tracks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mock_tracks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mock_track" do
    assert_difference('MockTrack.count') do
      post :create, mock_track: { name: @mock_track.name, track_id: @mock_track.track_id }
    end

    assert_redirected_to mock_track_path(assigns(:mock_track))
  end

  test "should show mock_track" do
    get :show, id: @mock_track
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mock_track
    assert_response :success
  end

  test "should update mock_track" do
    patch :update, id: @mock_track, mock_track: { name: @mock_track.name, track_id: @mock_track.track_id }
    assert_redirected_to mock_track_path(assigns(:mock_track))
  end

  test "should destroy mock_track" do
    assert_difference('MockTrack.count', -1) do
      delete :destroy, id: @mock_track
    end

    assert_redirected_to mock_tracks_path
  end
end
