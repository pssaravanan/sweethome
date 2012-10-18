require 'spec_helper'

describe HomesController do
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

  it 'should render form for creating new home' do
    get :new
    response.should render_template(:new)
  end

  it 'should create home' do
    home = build(:home)
    lambda {
      post :create, :home => {:name => "some name", :rent_or_sales => 1,
                              :amount => 15000, :status => "New",
                              :location_attributes => {:address => "street", :city => "Chenai", :pincode => 612001}}
    }.should change{Home.count}.by(1)
    response.should redirect_to('/homes')
  end
end
