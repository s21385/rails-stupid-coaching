require 'test_helper'

class IndexControllerTest < ActionDispatch::IntegrationTest
  test "should get questions" do
    get index_questions_url
    assert_response :success
  end

end
