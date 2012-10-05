require 'spec_helper'

describe User do
  it 'Check whether the user is home owner' do
    home = create(:home_owner)
    home.home_owner?.should == true
  end

  it 'should return false for the user who is not home owner' do
    user = create(:user)
    user.home_owner?.should == false
  end
end
