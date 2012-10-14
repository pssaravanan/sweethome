require 'spec_helper'

describe HomeController do
  before :each do
    @user = create(:home_owner)
    sign_in @user
  end
  it 'should return all home owned by the user' do
    home1 = create(:home, :home_owner => @user)
    home2 = create(:home, :home_owner => @user)
    get :index
    assigns[:homes].should == [home1, home2]
  end
end
