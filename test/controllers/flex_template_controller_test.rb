require "test_helper"

class FlexTemplateControllerTest < ActionDispatch::IntegrationTest
  test "should get name:string" do
    get flex_template_name:string_url
    assert_response :success
  end

  test "should get body:text" do
    get flex_template_body:text_url
    assert_response :success
  end
end
