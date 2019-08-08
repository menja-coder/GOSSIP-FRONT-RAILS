require 'test_helper'

class AuteurControllerTest < ActionDispatch::IntegrationTest
  test "should get profil" do
    get auteur_profil_url
    assert_response :success
  end

end
