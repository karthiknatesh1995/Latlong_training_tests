require 'test_helper'

class ExperimentControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get experiment_new_url
    assert_response :success
  end

end
