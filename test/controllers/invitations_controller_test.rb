require 'test_helper'

class InvitationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @invitation = invitations(:one)
  end

  test "should get index" do
    get invitations_url, as: :json
    assert_response :success
  end

  test "should create invitation" do
    assert_difference('Invitation.count') do
      post invitations_url, params: { invitation: { comment: @invitation.comment, contribution: @invitation.contribution, status: @invitation.status } }, as: :json
    end

    assert_response 201
  end

  test "should show invitation" do
    get invitation_url(@invitation), as: :json
    assert_response :success
  end

  test "should update invitation" do
    patch invitation_url(@invitation), params: { invitation: { comment: @invitation.comment, contribution: @invitation.contribution, status: @invitation.status } }, as: :json
    assert_response 200
  end

  test "should destroy invitation" do
    assert_difference('Invitation.count', -1) do
      delete invitation_url(@invitation), as: :json
    end

    assert_response 204
  end
end
