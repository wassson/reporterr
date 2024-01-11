require "test_helper"

module Reporterr
  class ErrorsControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    test "should get index" do
      get errors_index_url
      assert_response :success
    end
  end
end
