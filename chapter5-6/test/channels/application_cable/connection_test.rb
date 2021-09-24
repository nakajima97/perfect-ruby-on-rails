require "test_helper"

class ApplicationCable::ConnectionTest < ActionCable::Connection::TestCase
  test "connects with cookies" do
    user = User.first
    cookies.signed[:user_id] = user.id
  
    connect
  
    assert_equal connection.user_id, user.id
  end

  test "connection rejects" do
    cookies.signed[:user_id] = nil
    assert_reject_connection { connect }
  end
end
