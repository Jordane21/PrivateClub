require 'rails_helper'

RSpec.describe HomeController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

end

#require 'test_helper'

#class StaticPagesControllerTest < ActionDispatch::IntegrationTest

#  test "should get home" do
#    get static_pages_home_url
#    assert_response :success
#  end

#  test "should get help" do
#    get static_pages_help_url
#    assert_response :success
#  end
#end