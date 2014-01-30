require 'spec_helper'

describe "user can sign up with facebook" do
  it "user does not exist before sign up" do
    expect(User.count).to eq 0
    visit sign_up_path
    click_on "Sign up with Facebook"
    expect(User.count).to eq 1
  end
end
