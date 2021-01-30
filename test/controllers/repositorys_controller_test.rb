require 'test_helper'

class RepositorysControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get repositorys_index_url
    assert_response :success
  end

end
