require 'spec_helper'
describe 'Home Routes' do
  it 'should route /home/index' do
    { :get => '/home' }.should route_to  :action => "index", :controller => "home"
  end
end
