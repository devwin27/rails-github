require 'test_helper'

class RepositorieControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get repositorie_index_url
    assert_response :success
  end

end
