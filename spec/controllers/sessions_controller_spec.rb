require 'spec_helper'

describe SessionsController do
  it "creates a cookie on login" do
    request.env["omniauth.auth"] =  OmniAuth.config.mock_auth[:facebook]
    SessionsController.any_instance.stub(:env).and_return(request.env)
    post :create, provider: "facebook"
    expect(response.cookies['email']).to eq "joe@bloggs.com"
    expect(response.cookies['user_id']).to eq "1"
  end

end
