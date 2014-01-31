require 'spec_helper'

describe "user can sign up with facebook" do
  it "user does not exist before sign up" do
    expect(User.count).to eq 0
    visit root_url
    click_on "Sign in with Facebook"
    expect(User.count).to eq 1
  end
end
